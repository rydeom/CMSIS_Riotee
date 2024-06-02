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

	opCode := int(operator.Opcode)
	if operator.Opcode == modelparser.BuiltinOperator_CUSTOM {
		opCode = signalCustomOperator(operator.Custom_opcode)
	}
	opCodeBuffer := make([]byte, 2)
	binary.LittleEndian.PutUint16(opCodeBuffer, uint16(opCode))
	ret = append(ret, opCodeBuffer...)
	ret = append(ret, byte(0), byte(0)) // Padding
	if operator.Opcode == modelparser.BuiltinOperator_CONV_2D {
		ret = append(ret, encodeConv2DOptions(operator.Builtin_options.Conv_2d)...)
	}
	if operator.Opcode == modelparser.BuiltinOperator_DEPTHWISE_CONV_2D {
		ret = append(ret, encodeDepthwiseConv2DOptions(operator.Builtin_options.Depthwise_conv2d)...)
	}
	if operator.Opcode == modelparser.BuiltinOperator_FULLY_CONNECTED {
		ret = append(ret, encodeFullyConnectedOptions(operator.Builtin_options.Fully_connected)...)
	}
	if operator.Opcode == modelparser.BuiltinOperator_STRIDED_SLICE {
		ret = append(ret, encodeStridedSliceOptions(operator.Builtin_options.Strided_slice)...)
	}
	if operator.Opcode == modelparser.BuiltinOperator_CONCATENATION {
		ret = append(ret, encodeConcatenationOptions(operator.Builtin_options.Concatenation)...)
	}
	if opCode == signalCustomOperator(modelparser.CustomOperator_SIGNAL_WINDOW) {
		ret = append(ret, encodeSignalWindowOptions(operator.Builtin_options.Signal_window)...)
	}
	if opCode == signalCustomOperator(modelparser.CustomOperator_SIGNAL_RFFT) {
		ret = append(ret, encodeSignalRfftOptions(operator.Builtin_options.Signal_rfft)...)
	}
	if opCode == signalCustomOperator(modelparser.CustomOperator_SIGNAL_ENERGY) {
		ret = append(ret, encodeSignalEnergyOptions(operator.Builtin_options.Signal_energy)...)
	}
	if opCode == signalCustomOperator(modelparser.CustomOperator_SIGNAL_FILTER_BANK) {
		ret = append(ret, encodeSignalFilterBankOptions(operator.Builtin_options.Signal_filter_bank)...)
	}
	if opCode == signalCustomOperator(modelparser.CustomOperator_SIGNAL_FILTER_BANK_SPECTRAL_SUBTRACTION) {
		ret = append(ret, encodeSignalFilterBankSpectralSubtractionOptions(operator.Builtin_options.Signal_filter_bank_spectral_subtraction)...)
	}
	if opCode == signalCustomOperator(modelparser.CustomOperator_SIGNAL_PCAN) {
		ret = append(ret, encodeSignalPcanOptions(operator.Builtin_options.Signal_pcan)...)
	}
	if opCode == signalCustomOperator(modelparser.CustomOperator_SIGNAL_FILTER_BANK_LOG) {
		ret = append(ret, encodeSignalFilterBankLogOptions(operator.Builtin_options.Signal_filter_bank_log)...)
	}

	return ret
}

func signalCustomOperator(customOperator modelparser.CustomOperator) int {
	switch customOperator {
	case modelparser.CustomOperator_SIGNAL_WINDOW:
		return 1024
	case modelparser.CustomOperator_SIGNAL_FFT_AUTO_SCALE:
		return 1025
	case modelparser.CustomOperator_SIGNAL_RFFT:
		return 1026
	case modelparser.CustomOperator_SIGNAL_ENERGY:
		return 1027
	case modelparser.CustomOperator_SIGNAL_FILTER_BANK_SQUARE_ROOT:
		return 1028
	case modelparser.CustomOperator_SIGNAL_FILTER_BANK_SPECTRAL_SUBTRACTION:
		return 1029
	case modelparser.CustomOperator_SIGNAL_PCAN:
		return 1030
	case modelparser.CustomOperator_SIGNAL_FILTER_BANK_LOG:
		return 1031
	}

	return 0
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

func encodeSignalWindowOptions(options modelparser.SignalWindowOptions) []byte {
	ret := []byte{}
	bufferStride := make([]byte, 4)
	binary.LittleEndian.PutUint32(bufferStride, uint32(options.Shift))
	ret = append(ret, bufferStride...)

	return ret
}

func encodeSignalRfftOptions(options modelparser.SignalRfftOptions) []byte {
	ret := []byte{}
	bufferStride := make([]byte, 4)
	binary.LittleEndian.PutUint32(bufferStride, uint32(options.Fft_length))
	ret = append(ret, byte(options.TFLite_type))
	ret = append(ret, byte(0), byte(0), byte(0)) // Padding

	return ret
}

func encodeSignalEnergyOptions(options modelparser.SignalEnergyOptions) []byte {
	ret := []byte{}
	bufferStride := make([]byte, 4)
	binary.LittleEndian.PutUint32(bufferStride, uint32(options.End_index))
	ret = append(ret, bufferStride...)
	bufferStride = make([]byte, 4)
	binary.LittleEndian.PutUint32(bufferStride, uint32(options.Start_index))
	ret = append(ret, bufferStride...)
	return ret
}

func encodeSignalFilterBankOptions(options modelparser.SignalFilterBankOptions) []byte {
	ret := []byte{}
	bufferStride := make([]byte, 4)
	binary.LittleEndian.PutUint32(bufferStride, uint32(options.Num_channels))
	ret = append(ret, bufferStride...)
	return ret
}

func encodeSignalFilterBankSpectralSubtractionOptions(options modelparser.SignalFilterBankSpectralSubtractionOptions) []byte {
	ret := []byte{}
	bufferStride := make([]byte, 4)
	binary.LittleEndian.PutUint32(bufferStride, uint32(options.Alternate_one_minus_smoothing))
	ret = append(ret, bufferStride...)
	bufferStride = make([]byte, 4)
	binary.LittleEndian.PutUint32(bufferStride, uint32(options.Alternate_smoothing))
	ret = append(ret, bufferStride...)
	if options.Clamping {
		ret = append(ret, byte(1))
	} else {
		ret = append(ret, byte(0))
	}
	ret = append(ret, byte(0), byte(0), byte(0)) // Padding
	bufferStride = make([]byte, 4)
	binary.LittleEndian.PutUint32(bufferStride, uint32(options.Min_signal_remaining))
	ret = append(ret, bufferStride...)
	bufferStride = make([]byte, 4)
	binary.LittleEndian.PutUint32(bufferStride, uint32(options.Num_channels))
	ret = append(ret, bufferStride...)
	bufferStride = make([]byte, 4)
	binary.LittleEndian.PutUint32(bufferStride, uint32(options.One_minus_smoothing))
	ret = append(ret, bufferStride...)
	bufferStride = make([]byte, 4)
	binary.LittleEndian.PutUint32(bufferStride, uint32(options.Smoothing))
	ret = append(ret, bufferStride...)
	bufferStride = make([]byte, 4)
	binary.LittleEndian.PutUint32(bufferStride, uint32(options.Smoothing_bits))
	ret = append(ret, bufferStride...)
	bufferStride = make([]byte, 4)
	binary.LittleEndian.PutUint32(bufferStride, uint32(options.Spectral_subtraction_bits))
	ret = append(ret, bufferStride...)

	return ret
}

func encodeSignalPcanOptions(options modelparser.SignalPcanOptions) []byte {
	ret := []byte{}
	bufferStride := make([]byte, 4)
	binary.LittleEndian.PutUint32(bufferStride, uint32(options.Snr_shift))
	ret = append(ret, bufferStride...)
	return ret
}

func encodeSignalFilterBankLogOptions(options modelparser.SignalFilterBankLogOptions) []byte {
	ret := []byte{}
	bufferStride := make([]byte, 4)
	binary.LittleEndian.PutUint32(bufferStride, uint32(options.Input_correction_bits))
	ret = append(ret, bufferStride...)
	bufferStride = make([]byte, 4)
	binary.LittleEndian.PutUint32(bufferStride, uint32(options.Output_scale))
	ret = append(ret, bufferStride...)
	return ret
}

func encodeStridedSliceOptions(options modelparser.StridedSliceOptions) []byte {
	ret := []byte{}
	bufferStride := make([]byte, 2)
	binary.LittleEndian.PutUint16(bufferStride, uint16(options.Begin_mask))
	ret = append(ret, bufferStride...)
	bufferStride = make([]byte, 2)
	binary.LittleEndian.PutUint16(bufferStride, uint16(options.End_mask))
	ret = append(ret, bufferStride...)
	bufferStride = make([]byte, 2)
	binary.LittleEndian.PutUint16(bufferStride, uint16(options.Ellipsis_mask))
	ret = append(ret, bufferStride...)
	bufferStride = make([]byte, 2)
	binary.LittleEndian.PutUint16(bufferStride, uint16(options.New_axis_mask))
	ret = append(ret, bufferStride...)
	bufferStride = make([]byte, 2)
	binary.LittleEndian.PutUint16(bufferStride, uint16(options.Shrink_axis_mask))
	ret = append(ret, bufferStride...)
	if options.Offset {
		ret = append(ret, byte(1))
	} else {
		ret = append(ret, byte(0))
	}
	ret = append(ret, byte(0))

	return ret
}

func encodeConcatenationOptions(options modelparser.ConcatenationOptions) []byte {
	ret := []byte{}
	ret = append(ret, byte(options.Axis))
	ret = append(ret, byte(0), byte(0), byte(0)) // Padding
	return ret
}
