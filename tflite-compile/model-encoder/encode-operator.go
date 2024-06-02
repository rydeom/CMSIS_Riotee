package modelencoder

import (
	"fmt"
	"strings"
	modelparser "tflite-compile/model-parser"
)

func EncodeOperators(modelTag string, operators []modelparser.Operator) (string, string) {
	c_code := ""
	c_code += "#include <stdio.h>\n"
	c_code += "#include <stdint.h>\n"
	c_code += AddInclude(strings.ToLower(modelTag) + "_operators.h")
	c_code += "\n"
	c_code += getOperatorFunc(modelTag, operators)

	h_code := ""
	h_code += "#ifndef " + strings.ToUpper(modelTag) + "_OPERATOR_H\n"
	h_code += "#define " + strings.ToUpper(modelTag) + "_OPERATOR_H\n"
	h_code += "\n"

	h_code += "#include <stdio.h>\n"
	h_code += "#include <stdint.h>\n"
	h_code += AddInclude(strings.ToLower(modelTag) + "_tensors.h")
	h_code += AddInclude("operator.h")
	h_code += "\n"

	/*
		h_code += builtinOperatorToEnum()
		h_code += activationFunctionTypeToEnum()
		h_code += tfliteTypeToEnum()
		h_code += paddingToEnum()
		h_code += fullyConnectedOptionsWeightsFormatToEnum()
		h_code += optionsToStruct()
	*/

	for i, operators := range operators {
		h_code += operatorToStruct(modelTag, &operators, i)
	}
	h_code += operatorsToStruct(modelTag, operators)
	h_code += getOperatorFuncH(modelTag)
	h_code += "#endif // " + strings.ToUpper(modelTag) + "_OPERATOR_H\n"

	return c_code, h_code
}

func builtinOperatorToEnum() string {
	h_code := ""

	h_code += "typedef enum {\n"
	h_code += "    ADD = 0,\n"
	h_code += "    AVERAGE_POOL_2D = 1,\n"
	h_code += "    CONCATENATION = 2,\n"
	h_code += "    CONV_2D = 3,\n"
	h_code += "    DEPTHWISE_CONV_2D = 4,\n"
	h_code += "    DEPTH_TO_SPACE = 5,\n"
	h_code += "    DEQUANTIZE = 6,\n"
	h_code += "    EMBEDDING_LOOKUP = 7,\n"
	h_code += "    FLOOR = 8,\n"
	h_code += "    FULLY_CONNECTED = 9,\n"
	h_code += "    RESHAPE = 22,\n"
	h_code += "    SIGNAL_WINDOW = 1024,\n"
	h_code += "    SIGNAL_FFT_AUTO_SCALE = 1025,\n"
	h_code += "    SIGNAL_RFFT = 1026,\n"
	h_code += "    SIGNAL_ENERGY = 1027,\n"
	h_code += "    SIGNAL_FILTER_BANK_SQUARE_ROOT = 1028,\n"
	h_code += "    SIGNAL_FILTER_BANK_SPECTRAL_SUBTRACTION = 1029,\n"
	h_code += "    SIGNAL_PCAN = 1030,\n"
	h_code += "    SIGNAL_FILTER_BANK_LOG = 1031,\n"

	h_code += "} BuiltinOperator;\n"
	h_code += "\n"

	return h_code
}

func operatorToStruct(modelTag string, operator *modelparser.Operator, i int) string {
	h_code := ""

	h_code += "typedef struct {\n"
	h_code += fmt.Sprintf("    int32_t inputs[%d];\n", len(operator.Inputs))
	h_code += fmt.Sprintf("    int32_t outputs[%d];\n", len(operator.Outputs))
	h_code += "    BuiltinOperator opcode;\n"
	h_code += "    char pad[2];\n"
	switch operator.Opcode {
	case modelparser.BuiltinOperator_CONV_2D:
		h_code += "    Conv2DOptions builtin_options;\n"
	case modelparser.BuiltinOperator_DEPTHWISE_CONV_2D:
		h_code += "    DepthwiseConv2DOptions builtin_options;\n"
	case modelparser.BuiltinOperator_FULLY_CONNECTED:
		h_code += "    FullyConnectedOptions builtin_options;\n"
	case modelparser.BuiltinOperator_STRIDED_SLICE:
		h_code += "    StridedSliceOptions builtin_options;\n"
	case modelparser.BuiltinOperator_CONCATENATION:
		h_code += "    ConcatenationOptions builtin_options;\n"
	}

	if operator.Opcode == modelparser.BuiltinOperator_CUSTOM {
		switch operator.Custom_opcode {
		case modelparser.CustomOperator_SIGNAL_WINDOW:
			h_code += "    SignalWindowOptions builtin_options;\n"
		case modelparser.CustomOperator_SIGNAL_RFFT:
			h_code += "    SignalRfftOptions builtin_options;\n"
		case modelparser.CustomOperator_SIGNAL_ENERGY:
			h_code += "    SignalEnergyOptions builtin_options;\n"
		case modelparser.CustomOperator_SIGNAL_FILTER_BANK:
			h_code += "    SignalFilterBankOptions builtin_options;\n"
		case modelparser.CustomOperator_SIGNAL_FILTER_BANK_SPECTRAL_SUBTRACTION:
			h_code += "    SignalFilterBankSpectralSubtractionOptions builtin_options;\n"
		case modelparser.CustomOperator_SIGNAL_PCAN:
			h_code += "    SignalPcanOptions builtin_options;\n"
		case modelparser.CustomOperator_SIGNAL_FILTER_BANK_LOG:
			h_code += "    SignalFilterBankLogOptions builtin_options;\n"
		}
	}

	h_code += fmt.Sprintf("} __attribute__((__packed__)) "+strings.ToUpper(modelTag)+"_Operator_%d;\n", i)
	h_code += "\n"

	return h_code
}

func operatorsToStruct(modelTag string, operators []modelparser.Operator) string {
	h_code := ""

	h_code += "typedef struct {\n"
	for i := 0; i < len(operators); i++ {
		h_code += fmt.Sprintf("    "+strings.ToUpper(modelTag)+"_Operator_%d operator_%d;\n", i, i)
	}
	h_code += "} __attribute__((__packed__)) " + strings.ToUpper(modelTag) + "_Operators;\n"
	h_code += "\n"

	return h_code
}

func activationFunctionTypeToEnum() string {
	h_code := ""

	h_code += "typedef enum {\n"
	h_code += "    NONE = 0,\n"
	h_code += "    RELU = 1,\n"
	h_code += "    RELU_N1_TO_1 = 2,\n"
	h_code += "    RELU6 = 3,\n"
	h_code += "    TANH = 4,\n"
	h_code += "    SIGN_BIT = 5,\n"
	h_code += "} ActivationFunctionType;\n"
	h_code += "\n"

	return h_code
}

func tfliteTypeToEnum() string {
	h_code := ""

	h_code += "typedef enum {\n"
	h_code += "    TFLIE_TYPE_NO_TYPE = 0,\n"
	h_code += "    TFLIE_TYPE_FLOAT32 = 1,\n"
	h_code += "    TFLIE_TYPE_INT32 = 2,\n"
	h_code += "    TFLIE_TYPE_UINT8 = 3,\n"
	h_code += "    TFLIE_TYPE_INT64 = 4,\n"
	h_code += "    TFLIE_TYPE_STRING = 5,\n"
	h_code += "    TFLIE_TYPE_BOOL = 6,\n"
	h_code += "    TFLIE_TYPE_INT16 = 7,\n"
	h_code += "    TFLIE_TYPE_COMPLEX64 = 8,\n"
	h_code += "    TFLIE_TYPE_INT8 = 9,\n"
	h_code += "    TFLIE_TYPE_FLOAT16 = 10,\n"
	h_code += "    TFLIE_TYPE_FLOAT64 = 11,\n"
	h_code += "    TFLIE_TYPE_COMPLEX128 = 12,\n"
	h_code += "    TFLIE_TYPE_UINT64 = 13,\n"
	h_code += "    TFLIE_TYPE_RESOURCE = 14,\n"
	h_code += "    TFLIE_TYPE_VARIANT = 15,\n"
	h_code += "    TFLIE_TYPE_UINT32 = 16,\n"
	h_code += "    TFLIE_TYPE_UINT16 = 17,\n"
	h_code += "    TFLIE_TYPE_INT4 = 18,\n"
	h_code += "    TFLIE_TYPE_BFLOAT16 = 19,\n"
	h_code += "} TFLiteType;\n"
	h_code += "\n"

	return h_code
}

func paddingToEnum() string {
	h_code := ""

	h_code += "typedef enum {\n"
	h_code += "    PADDING_SAME = 0,\n"
	h_code += "    PADDING_VALID = 1,\n"
	h_code += "} Padding;\n"
	h_code += "\n"

	return h_code
}

func optionsToStruct() string {
	h_code := ""

	h_code += signalWindowOptionsToStruct()
	h_code += signalRfftOptionsToStruct()
	h_code += signalEnergyOptionsToStruct()
	h_code += signalFilterBankOptionsToStruct()
	h_code += signalFilterBankSpectralSubtractionOptionsToStruct()
	h_code += signalPcanOptionsToStruct()
	h_code += signalFilterBankLogOptionsToStruct()

	h_code += fullyConnectedOptionsToStruct()
	h_code += conv2DOptionsToStruct()
	h_code += depthwiseConv2DOptionsToStruct()

	return h_code
}

func signalWindowOptionsToStruct() string {
	h_code := ""

	h_code += "typedef struct {\n"
	h_code += "    int32_t shift;\n"
	h_code += "} __attribute__((__packed__)) SignalWindowOptions;\n"
	h_code += "\n"

	return h_code
}

func signalRfftOptionsToStruct() string {
	h_code := ""

	h_code += "typedef struct {\n"
	h_code += "    int32_t fft_length;\n"
	h_code += "    TFLiteType fft_type;\n"
	h_code += "    char pad[3];\n"
	h_code += "} __attribute__((__packed__)) SignalRfftOptions;\n"
	h_code += "\n"

	return h_code
}

func signalEnergyOptionsToStruct() string {
	h_code := ""

	h_code += "typedef struct {\n"
	h_code += "    int32_t end_index;\n"
	h_code += "    int32_t start_index;\n"
	h_code += "} __attribute__((__packed__)) SignalEnergyOptions;\n"
	h_code += "\n"

	return h_code
}

func signalFilterBankOptionsToStruct() string {
	h_code := ""

	h_code += "typedef struct {\n"
	h_code += "    int32_t num_channels;\n"
	h_code += "} __attribute__((__packed__)) SignalFilterBankOptions;\n"
	h_code += "\n"

	return h_code
}

func signalFilterBankSpectralSubtractionOptionsToStruct() string {
	h_code := ""

	h_code += "typedef struct {\n"
	h_code += "   int32_t alternate_one_minus_smoothing;\n"
	h_code += "   int32_t alternate_smoothing;\n"
	h_code += "   uint8_t clamping;\n"
	h_code += "   char pad[3];\n"
	h_code += "   int32_t min_signal_remaining;\n"
	h_code += "   int32_t num_channels;\n"
	h_code += "   int32_t one_minus_smoothing;\n"
	h_code += "   int32_t smoothing;\n"
	h_code += "   int32_t smoothing_bits;\n"
	h_code += "   int32_t spectral_subtraction_bits;\n"
	h_code += "} __attribute__((__packed__)) SignalFilterBankSpectralSubtractionOptions;\n"
	h_code += "\n"

	return h_code
}

func signalPcanOptionsToStruct() string {
	h_code := ""

	h_code += "typedef struct {\n"
	h_code += "    int32_t snr_shift;\n"
	h_code += "} __attribute__((__packed__)) SignalPcanOptions;\n"
	h_code += "\n"

	return h_code
}

func signalFilterBankLogOptionsToStruct() string {
	h_code := ""

	h_code += "typedef struct {\n"
	h_code += "    int32_t input_correction_bits;\n"
	h_code += "    int32_t output_scale;\n"
	h_code += "} __attribute__((__packed__)) SignalFilterBankLogOptions;\n"
	h_code += "\n"

	return h_code
}

func stridedSliceOptionsToStruct() string {
	h_code := ""

	h_code += "typedef struct {\n"
	h_code += "    int16_t begin_mask;\n"
	h_code += "    int16_t ellipsis_mask;\n"
	h_code += "    int16_t end_mask;\n"
	h_code += "    int16_t new_axis_mask;\n"
	h_code += "    int16_t shrink_axis_mask;\n"
	h_code += "    char pad[2];\n"
	h_code += "    int8_t start_indices_count;\n"
	h_code += "    int8_t stop_indices_count;\n"
	h_code += "    int8_t strides_count;\n"
	h_code += "    char pad[1];\n"
	h_code += "    int32_t start_indices[5];\n"
	h_code += "    int32_t stop_indices[5];\n"
	h_code += "    int32_t strides[5];\n"
	h_code += "} __attribute__((__packed__)) StridedSliceOptions;\n"
	h_code += "\n"

	return h_code
}

func fullyConnectedOptionsWeightsFormatToEnum() string {
	h_code := ""

	h_code += "typedef enum {\n"
	h_code += "    DEFAULT = 0,\n"
	h_code += "    SHUFFLED4x16INT8 = 1,\n"
	h_code += "} FullyConnectedOptionsWeightsFormat;\n"
	h_code += "\n"

	return h_code
}

func fullyConnectedOptionsToStruct() string {
	h_code := ""

	h_code += "typedef struct {\n"
	h_code += "    ActivationFunctionType fused_activation_function;\n"
	h_code += "    TensorType quantized_bias_type;\n"
	h_code += "    FullyConnectedOptionsWeightsFormat weights_format;\n"
	h_code += "    char pad[1];\n"
	h_code += "} __attribute__((__packed__)) FullyConnectedOptions;\n"
	h_code += "\n"

	return h_code
}

func conv2DOptionsToStruct() string {
	h_code := ""

	h_code += "typedef struct {\n"
	h_code += "    Padding padding;\n"
	h_code += "    ActivationFunctionType fused_activation_function;\n"
	h_code += "    TensorType quantized_bias_type;\n"
	h_code += "    char pad[1];\n"
	h_code += "    int32_t stride_w;\n"
	h_code += "    int32_t stride_h;\n"
	h_code += "    int32_t dilation_w_factor;\n"
	h_code += "    int32_t dilation_h_factor;\n"
	h_code += "} __attribute__((__packed__)) Conv2DOptions;\n"
	h_code += "\n"

	return h_code
}

func depthwiseConv2DOptionsToStruct() string {
	h_code := ""

	h_code += "typedef struct {\n"
	h_code += "    Padding padding;\n"
	h_code += "    ActivationFunctionType fused_activation_function;\n"
	h_code += "    char pad[2];\n"
	h_code += "    int32_t stride_w;\n"
	h_code += "    int32_t stride_h;\n"
	h_code += "    int32_t depth_multiplier;\n"
	h_code += "    int32_t dilation_w_factor;\n"
	h_code += "    int32_t dilation_h_factor;\n"
	h_code += "} __attribute__((__packed__)) DepthwiseConv2DOptions;\n"
	h_code += "\n"

	return h_code
}

func getOperatorFunc(modelTag string, operators []modelparser.Operator) string {
	c_code := ""

	c_code += "uint8_t *" + strings.ToUpper(modelTag) + "_get_operator(const " + strings.ToUpper(modelTag) + "_Operators *operators, int index){\n"
	c_code += fmt.Sprintf("    uint32_t sizes[%d] = {0", len(operators))
	for i := range operators[0 : len(operators)-1] {
		temp := fmt.Sprintf(",\nsizeof(operators->operator_%d)", i)
		for j := range operators[0:i] {
			temp += fmt.Sprintf(" + sizeof(operators->operator_%d)", j)
		}
		c_code += temp

	}
	c_code += "};\n"
	c_code += "    return (uint8_t *)operators + sizes[index];\n"
	c_code += "}\n"
	c_code += "\n"

	return c_code
}

func getOperatorFuncH(modelTag string) string {
	h_code := ""

	h_code += "uint8_t *" + strings.ToUpper(modelTag) + "_get_operator(const " + strings.ToUpper(modelTag) + "_Operators *operators, int index);\n"
	h_code += "\n"

	return h_code
}
