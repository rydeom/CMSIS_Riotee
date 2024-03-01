package modelencoder

import (
	"fmt"
	modelparser "tflite-compile/model-parser"
)

func EncodeOperators(operators []modelparser.Operator) (string, string) {
	c_code := ""
	c_code += "#include <stdio.h>\n"
	c_code += "#include <stdint.h>\n"
	c_code += "#include \"operator.h\"\n"
	c_code += "\n"
	c_code += getOperatorFunc(operators)

	h_code := ""
	h_code += "#ifndef OPERATOR_H\n"
	h_code += "#define OPERATOR_H\n"
	h_code += "\n"

	h_code += "#include <stdio.h>\n"
	h_code += "#include <stdint.h>\n"
	h_code += "#include \"tensor.h\"\n"
	h_code += "\n"

	h_code += builtinOperatorToEnum()
	h_code += activationFunctionTypeToEnum()
	h_code += paddingToEnum()
	h_code += fullyConnectedOptionsWeightsFormatToEnum()
	h_code += optionsToStruct()

	for i, operators := range operators {
		h_code += operatorToStruct(&operators, i)
	}
	h_code += operatorsToStruct(operators)
	h_code += getOperatorFuncH()
	h_code += "#endif // OPERATOR_H\n"

	return c_code, h_code
}

func builtinOperatorToEnum() string {
	h_code := ""

	h_code += "typedef enum {\n"
	h_code += "    ADD,\n"
	h_code += "    AVERAGE_POOL_2D,\n"
	h_code += "    CONCATENATION,\n"
	h_code += "    CONV_2D,\n"
	h_code += "    DEPTHWISE_CONV_2D,\n"
	h_code += "    DEPTH_TO_SPACE,\n"
	h_code += "    DEQUANTIZE,\n"
	h_code += "    EMBEDDING_LOOKUP,\n"
	h_code += "    FLOOR,\n"
	h_code += "    FULLY_CONNECTED,\n"
	h_code += "} BuiltinOperator;\n"
	h_code += "\n"

	return h_code
}

func operatorToStruct(operator *modelparser.Operator, i int) string {
	h_code := ""

	h_code += "typedef struct {\n"
	h_code += fmt.Sprintf("    int32_t inputs[%d];\n", len(operator.Inputs))
	h_code += fmt.Sprintf("    int32_t outputs[%d];\n", len(operator.Outputs))
	h_code += "    BuiltinOperator opcode;\n"
	h_code += "    char pad[3];\n"
	switch operator.Opcode {
	case modelparser.BuiltinOperator_CONV_2D:
		h_code += "    Conv2DOptions builtin_options;\n"
	case modelparser.BuiltinOperator_DEPTHWISE_CONV_2D:
		h_code += "    DepthwiseConv2DOptions builtin_options;\n"
	case modelparser.BuiltinOperator_FULLY_CONNECTED:
		h_code += "    FullyConnectedOptions builtin_options;\n"
	}
	h_code += fmt.Sprintf("} __attribute__((__packed__)) Operator_%d;\n", i)
	h_code += "\n"

	return h_code
}

func operatorsToStruct(operators []modelparser.Operator) string {
	h_code := ""

	h_code += "typedef struct {\n"
	for i := 0; i < len(operators); i++ {
		h_code += fmt.Sprintf("    Operator_%d operator_%d;\n", i, i)
	}
	h_code += "} __attribute__((__packed__)) Operators;\n"
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

	h_code += fullyConnectedOptionsToStruct()
	h_code += conv2DOptionsToStruct()
	h_code += depthwiseConv2DOptionsToStruct()

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

func getOperatorFunc(operators []modelparser.Operator) string {
	c_code := ""

	c_code += "uint8_t *get_operator(Operators *operators, int index){\n"
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

func getOperatorFuncH() string {
	h_code := ""

	h_code += "uint8_t *get_operator(Operators *operators, int index);\n"
	h_code += "\n"

	return h_code
}
