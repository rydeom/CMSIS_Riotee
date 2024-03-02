package dataencoder

import (
	"encoding/binary"
	modelparser "tflite-compile/model-parser"
)

func EncodeOperatorsIntoBytes(operators []modelparser.Operator) []byte {
	ret := []byte{}
	for _, operator := range operators {
		ret = append(ret, encodeOperatorIntoBytes(operator)...)
	}
	return ret
}

func encodeOperatorIntoBytes(operator modelparser.Operator) []byte {
	ret := []byte{}

	for _, input := range operator.Inputs {
		bufferInputs := make([]byte, 4)
		binary.LittleEndian.PutUint32(bufferInputs, uint32(input))
		ret = append(ret, bufferInputs...)
	}
	for _, output := range operator.Outputs {
		bufferOutputs := make([]byte, 4)
		binary.LittleEndian.PutUint32(bufferOutputs, uint32(output))
		ret = append(ret, bufferOutputs...)
	}

	ret = append(ret, byte(operator.Opcode))
	ret = append(ret, byte(0), byte(0), byte(0)) // Padding
	if operator.Opcode == modelparser.BuiltinOperator_CONV_2D {
		ret = append(ret, encodeConv2DOptions(operator.Builtin_options.Conv_2d)...)
	}
	if operator.Opcode == modelparser.BuiltinOperator_DEPTHWISE_CONV_2D {
		ret = append(ret, encodeDepthwiseConv2DOptions(operator.Builtin_options.Depthwise_conv2d)...)
	}

	if operator.Opcode == modelparser.BuiltinOperator_FULLY_CONNECTED {
		ret = append(ret, encodeFullyConnectedOptions(operator.Builtin_options.Fully_connected)...)
	}
	return ret
}

func encodeConv2DOptions(options modelparser.Conv2DOptions) []byte {
	ret := []byte{}
	ret = append(ret, byte(options.Padding))
	ret = append(ret, byte(options.Fused_activation_function))
	ret = append(ret, byte(options.Quantized_bias_type))
	ret = append(ret, byte(0)) // Padding

	bufferStrideW := make([]byte, 4)
	binary.LittleEndian.PutUint32(bufferStrideW, uint32(options.Stride_w))
	ret = append(ret, bufferStrideW...)
	bufferStrideH := make([]byte, 4)
	binary.LittleEndian.PutUint32(bufferStrideH, uint32(options.Stride_h))
	ret = append(ret, bufferStrideH...)
	bufferDilationWFactor := make([]byte, 4)
	binary.LittleEndian.PutUint32(bufferDilationWFactor, uint32(options.Dilation_w_factor))
	ret = append(ret, bufferDilationWFactor...)
	bufferDilationHFactor := make([]byte, 4)
	binary.LittleEndian.PutUint32(bufferDilationHFactor, uint32(options.Dilation_h_factor))
	ret = append(ret, bufferDilationHFactor...)
	return ret
}

func encodeDepthwiseConv2DOptions(options modelparser.DepthwiseConv2DOptions) []byte {
	ret := []byte{}
	ret = append(ret, byte(options.Padding))
	ret = append(ret, byte(options.Fused_activation_function))
	ret = append(ret, byte(0), byte(0) /* Padding */)

	bufferStrideW := make([]byte, 4)
	binary.LittleEndian.PutUint32(bufferStrideW, uint32(options.Stride_w))
	ret = append(ret, bufferStrideW...)
	bufferStrideH := make([]byte, 4)
	binary.LittleEndian.PutUint32(bufferStrideH, uint32(options.Stride_h))
	ret = append(ret, bufferStrideH...)
	bufferDepthMultiplier := make([]byte, 4)
	binary.LittleEndian.PutUint32(bufferDepthMultiplier, uint32(options.Depth_multiplier))
	ret = append(ret, bufferDepthMultiplier...)
	bufferDilationWFactor := make([]byte, 4)
	binary.LittleEndian.PutUint32(bufferDilationWFactor, uint32(options.Dilation_w_factor))
	ret = append(ret, bufferDilationWFactor...)
	bufferDilationHFactor := make([]byte, 4)
	binary.LittleEndian.PutUint32(bufferDilationHFactor, uint32(options.Dilation_h_factor))
	ret = append(ret, bufferDilationHFactor...)
	return ret
}

func encodeFullyConnectedOptions(options modelparser.FullyConnectedOptions) []byte {
	ret := []byte{}
	ret = append(ret, byte(options.Fused_activation_function))
	ret = append(ret, byte(options.Quantized_bias_type))
	ret = append(ret, byte(options.Weights_format))
	ret = append(ret, byte(0)) // Padding
	return ret
}
