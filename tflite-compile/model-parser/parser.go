package modelparser

import (
	"encoding/json"
	"fmt"
	"os"
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
			if operator.Opcode == BuiltinOperator_CUSTOM {
				operator.Custom_opcode = CustomOperator(tflite_model_operator_code.CustomCode())
			}
			parseOperatorOptions(&operator, tflite_operator)
			operators[i] = operator
		}
	}
	m.Operators = operators
}

func parseOperatorOptions(operator *Operator, tflite_operator tflite.Operator) {
	if operator.Opcode == BuiltinOperator_CUSTOM {
		parseCustomOperatorOptions(operator, tflite_operator)
		return
	}
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
	case BuiltinOperator_STRIDED_SLICE:
		table := flatbuffers.Table{}
		tflite_operator.BuiltinOptions(&table)
		options := tflite.StridedSliceOptions{}
		options.Init(table.Bytes, table.Pos)
		operator.Builtin_options = BuiltinOptions{
			Strided_slice: StridedSliceOptions{
				Begin_mask:       int16(options.BeginMask()),
				End_mask:         int16(options.EndMask()),
				Ellipsis_mask:    int16(options.EllipsisMask()),
				New_axis_mask:    int16(options.NewAxisMask()),
				Shrink_axis_mask: int16(options.ShrinkAxisMask()),
				Offset:           options.Offset(),
			},
		}
	case BuiltinOperator_CONCATENATION:
		table := flatbuffers.Table{}
		tflite_operator.BuiltinOptions(&table)
		options := tflite.ConcatenationOptions{}
		options.Init(table.Bytes, table.Pos)
		operator.Builtin_options = BuiltinOptions{
			Concatenation: ConcatenationOptions{
				Axis:                      int8(options.Axis()),
			},
		}
	}
}

func parseCustomOperatorOptions(operator *Operator, tflite_operator tflite.Operator) {
	if tflite_operator.CustomOptionsLength() == 0 {
		return
	}

	filePath := "tflite-files/custom_options.json" // Replace with the actual file path
	fileData, err := os.ReadFile(filePath)
	if err != nil {
		// Handle error
		return
	}
	var customOptions map[string]interface{}
	err = json.Unmarshal(fileData, &customOptions)
	if err != nil {
		// Handle error
		return
	}
	optionsMap, ok := customOptions[fmt.Sprintf("%d", tflite_operator.OpcodeIndex())].(map[string]interface{})
	if !ok {
		return
	}

	switch operator.Custom_opcode {
	case CustomOperator_SIGNAL_WINDOW:
		shift, ok := optionsMap["shift"].(float64)
		if !ok {
			return
		}
		operator.Builtin_options = BuiltinOptions{
			Signal_window: SignalWindowOptions{
				Shift: (int32)(shift),
			},
		}
	case CustomOperator_SIGNAL_RFFT:
		tfliteType, ok := optionsMap["T"].(TFLiteType)
		if !ok {
			return
		}
		fftLength, ok := optionsMap["fft_length"].(int32)
		if !ok {
			return
		}
		operator.Builtin_options = BuiltinOptions{
			Signal_rfft: SignalRfftOptions{
				TFLite_type: tfliteType,
				Fft_length:  fftLength,
			},
		}
	case CustomOperator_SIGNAL_ENERGY:
		endIndex, ok := optionsMap["end_index"].(int32)
		if !ok {
			return
		}
		startIndex, ok := optionsMap["start_index"].(int32)
		if !ok {
			return
		}
		operator.Builtin_options = BuiltinOptions{
			Signal_energy: SignalEnergyOptions{
				End_index:   endIndex,
				Start_index: startIndex,
			},
		}
	case CustomOperator_SIGNAL_FILTER_BANK:
		numChannels, ok := optionsMap["num_channels"].(int32)
		if !ok {
			return
		}
		operator.Builtin_options = BuiltinOptions{
			Signal_filter_bank: SignalFilterBankOptions{
				Num_channels: numChannels,
			},
		}
	case CustomOperator_SIGNAL_FILTER_BANK_SPECTRAL_SUBTRACTION:
		alternateOneMinusSmoothing, ok := optionsMap["alternate_one_minus_smoothing"].(int32)
		if !ok {
			return
		}
		alternateSmoothing, ok := optionsMap["alternate_smoothing"].(int32)
		if !ok {
			return
		}
		clamping, ok := optionsMap["clamping"].(bool)
		if !ok {
			return
		}
		minSignalRemaining, ok := optionsMap["min_signal_remaining"].(int32)
		if !ok {
			return
		}
		numChannels, ok := optionsMap["num_channels"].(int32)
		if !ok {
			return
		}
		oneMinusSmoothing, ok := optionsMap["one_minus_smoothing"].(int32)
		if !ok {
			return
		}
		smoothing, ok := optionsMap["smoothing"].(int32)
		if !ok {
			return
		}
		smoothingBits, ok := optionsMap["smoothing_bits"].(int32)
		if !ok {
			return
		}
		spectralSubtractionBits, ok := optionsMap["spectral_subtraction_bits"].(int32)
		if !ok {
			return
		}
		operator.Builtin_options = BuiltinOptions{
			Signal_filter_bank_spectral_subtraction: SignalFilterBankSpectralSubtractionOptions{
				Alternate_one_minus_smoothing: alternateOneMinusSmoothing,
				Alternate_smoothing:           alternateSmoothing,
				Clamping:                      clamping,
				Min_signal_remaining:          minSignalRemaining,
				Num_channels:                  numChannels,
				One_minus_smoothing:           oneMinusSmoothing,
				Smoothing:                     smoothing,
				Smoothing_bits:                smoothingBits,
				Spectral_subtraction_bits:     spectralSubtractionBits,
			},
		}
	case CustomOperator_SIGNAL_PCAN:
		snrShift, ok := optionsMap["snr_shift"].(int32)
		if !ok {
			return
		}
		operator.Builtin_options = BuiltinOptions{
			Signal_pcan: SignalPcanOptions{
				Snr_shift: snrShift,
			},
		}
	case CustomOperator_SIGNAL_FILTER_BANK_LOG:
		inputCorrectionBits, ok := optionsMap["input_correction_bits"].(int32)
		if !ok {
			return
		}
		outputScale, ok := optionsMap["output_scale"].(int32)
		if !ok {
			return
		}
		operator.Builtin_options = BuiltinOptions{
			Signal_filter_bank_log: SignalFilterBankLogOptions{
				Input_correction_bits: inputCorrectionBits,
				Output_scale:          outputScale,
			},
		}
	}
}
