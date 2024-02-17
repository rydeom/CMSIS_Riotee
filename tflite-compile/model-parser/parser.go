package modelparser

import (
	tflite "tflite-compile/tflite"

	flatbuffers "github.com/google/flatbuffers/go"
)

func (m *Model) ParseModel(buffer []byte) error {
	tflite_model := tflite.GetRootAsModel(buffer, 0)
	m.Version = tflite_model.Version()
	tflite_subgraph := tflite.SubGraph{}
	tflite_model.Subgraphs(&tflite_subgraph, 0)
	m.parseInputs(tflite_subgraph)
	m.parseOutputs(tflite_subgraph)
	m.parseBuffers(tflite_model)
	m.parseTensors(tflite_subgraph)
	m.parseOperators(tflite_model, tflite_subgraph)

	return nil
}

func (m *Model) parseInputs(sub_graph tflite.SubGraph) {
	inputs := make([]int32, sub_graph.InputsLength())
	for i := 0; i < sub_graph.InputsLength(); i++ {
		inputs[i] = sub_graph.Inputs(i)
	}
	m.Inputs = inputs
}

func (m *Model) parseOutputs(sub_graph tflite.SubGraph) {
	outputs := make([]int32, sub_graph.OutputsLength())
	for i := 0; i < sub_graph.OutputsLength(); i++ {
		outputs[i] = sub_graph.Outputs(i)
	}
	m.Outputs = outputs
}

func (m *Model) parseBuffers(tflite_model *tflite.Model) {
	buffers := make([]Buffer, tflite_model.BuffersLength())
	for i := 0; i < tflite_model.BuffersLength(); i++ {
		tflite_buffer := tflite.Buffer{}
		if tflite_model.Buffers(&tflite_buffer, i) {
			buffers[i] = Buffer{Data: tflite_buffer.DataBytes()}
		}
	}
	m.Buffers = buffers
}

func (m *Model) parseTensors(sub_graph tflite.SubGraph) {
	tensors := make([]Tensor, sub_graph.TensorsLength())
	for i := 0; i < sub_graph.TensorsLength(); i++ {
		tflite_tensor := tflite.Tensor{}
		if sub_graph.Tensors(&tflite_tensor, i) {
			tensor := Tensor{
				Type:         TensorType(tflite_tensor.Type()),
				Shape:        make([]int, tflite_tensor.ShapeLength()),
				Buffer:       tflite_tensor.Buffer(),
				Quantization: QuantizationParameters{},
			}
			for j := 0; j < tflite_tensor.ShapeLength(); j++ {
				tensor.Shape[j] = int(tflite_tensor.Shape(j))
			}
			tflite_quantization := tflite.QuantizationParameters{}
			tflite_tensor.Quantization(&tflite_quantization)
			if tflite_quantization.ScaleLength() > 0 {
				tensor.Quantization.Scale = make([]float32, tflite_quantization.ScaleLength())
				for j := 0; j < tflite_quantization.ScaleLength(); j++ {
					tensor.Quantization.Scale[j] = tflite_quantization.Scale(j)
				}
			}
			if tflite_quantization.ZeroPointLength() > 0 {
				tensor.Quantization.Zero_point = make([]int64, tflite_quantization.ZeroPointLength())
				for j := 0; j < tflite_quantization.ZeroPointLength(); j++ {
					tensor.Quantization.Zero_point[j] = int64(tflite_quantization.ZeroPoint(j))
				}
			}
			tensor.Quantization.Quantized_dimension = tflite_quantization.QuantizedDimension()
			tensors[i] = tensor
		}
	}
	m.Tensors = tensors
}

func (m *Model) parseOperators(tflite_model *tflite.Model, sub_graph tflite.SubGraph) {
	operators := make([]Operator, sub_graph.OperatorsLength())
	for i := 0; i < sub_graph.OperatorsLength(); i++ {
		tflite_operator := tflite.Operator{}
		if sub_graph.Operators(&tflite_operator, i) {

			operator := Operator{
				Inputs:  make([]int, tflite_operator.InputsLength()),
				Outputs: make([]int, tflite_operator.OutputsLength()),
			}
			for j := 0; j < tflite_operator.InputsLength(); j++ {
				operator.Inputs[j] = int(tflite_operator.Inputs(j))
			}
			for j := 0; j < tflite_operator.OutputsLength(); j++ {
				operator.Outputs[j] = int(tflite_operator.Outputs(j))
			}

			tflite_model_operator_code := tflite.OperatorCode{}
			tflite_model.OperatorCodes(&tflite_model_operator_code, int(tflite_operator.OpcodeIndex()))
			operator.Opcode = BuiltinOperator(tflite_model_operator_code.BuiltinCode())

			parseOperatorOptions(&operator, tflite_operator)
			operators[i] = operator
		}
	}
	m.Operators = operators
}

func parseOperatorOptions(operator *Operator, tflite_operator tflite.Operator) {
	switch operator.Opcode {
	case BuiltinOperator_FULLY_CONNECTED:
		table := flatbuffers.Table{}
		tflite_operator.BuiltinOptions(&table)
		options := tflite.FullyConnectedOptions{}
		options.Init(table.Bytes, table.Pos)
		operator.Builtin_options = BuiltinOptions{
			Fully_connected: FullyConnectedOptions{
				Fused_activation_function: ActivationFunctionType(options.FusedActivationFunction()),
			},
		}
	}
}
