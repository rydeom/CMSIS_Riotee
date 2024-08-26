package modelencoder

import (
	"fmt"
	"strings"
	"tflite-compile/model-encoder/tensor"
	modelparser "tflite-compile/model-parser"
)

func EncodeTensors(modelTag string, tensors []modelparser.Tensor, buffers []modelparser.Buffer) (string, string) {
	c_get_tensor_size, h_get_tensor_size := tensor.GetTensorSize(modelTag, tensors)

	c_code := ""
	c_code += "#include <stdio.h>\n"
	c_code += "#include <stdint.h>\n"
	c_code += AddInclude(strings.ToLower(modelTag) + "_tensors.h")
	c_code += "#include \"printf.h\"\n"
	c_code += "#include \"arm_nn_types.h\"\n"
	c_code += "\n"
	c_code += getTensorFunc(modelTag, tensors)
	c_code += c_get_tensor_size

	h_code := ""
	h_code += "#ifndef " + strings.ToUpper(modelTag) + "_TENSORS_H\n"
	h_code += "#define " + strings.ToUpper(modelTag) + "_TENSORS_H\n"
	h_code += "\n"

	h_code += "#include <stdio.h>\n"
	h_code += "#include <stdint.h>\n"
	h_code += "#include \"arm_nn_types.h\"\n"
	h_code += AddInclude("tensor.h")
	h_code += "\n"

	for i, tensor := range tensors {
		h_code += tensorToStruct(modelTag, &tensor, i, buffers)
	}
	h_code += tensorsToStruct(modelTag, tensors)
	h_code += getTensorFuncH(modelTag, tensors)
	h_code += h_get_tensor_size
	h_code += "#endif // " + strings.ToUpper(modelTag) + "_TENSORS_H\n"

	return c_code, h_code
}

func tensorTypeToEnum() string {
	h_code := ""

	h_code += "typedef enum {\n"
	h_code += "    FLOAT32,\n"
	h_code += "    FLOAT16,\n"
	h_code += "    INT32,\n"
	h_code += "    UINT8,\n"
	h_code += "    INT64,\n"
	h_code += "    STRING,\n"
	h_code += "    BOOL,\n"
	h_code += "    INT16,\n"
	h_code += "    COMPLEX64,\n"
	h_code += "    INT8,\n"
	h_code += "    FLOAT64,\n"
	h_code += "    COMPLEX128,\n"
	h_code += "    UINT64,\n"
	h_code += "    RESOURCE,\n"
	h_code += "    VARIANT,\n"
	h_code += "    UINT32,\n"
	h_code += "    UINT16,\n"
	h_code += "    INT4,\n"
	h_code += "} TensorType;\n"
	h_code += "\n"

	return h_code
}

func quantizationParametersToStruct(modelTag string, quantizationParameters *modelparser.QuantizationParameters, index int) string {
	h_code := ""

	h_code += "typedef struct {\n"
	if len(quantizationParameters.Scale) > 0 {
		h_code += fmt.Sprintf("    float scale[%d];\n", len(quantizationParameters.Scale))
	}
	if len(quantizationParameters.Zero_point) > 0 {
		h_code += fmt.Sprintf("    int64_t zero_point[%d];\n", len(quantizationParameters.Zero_point))
	}
	if quantizationParameters.Quantized_dimension != 0 {
		h_code += "    int32_t quantized_dimension;\n"
	}
	h_code += fmt.Sprintf("} __attribute__((__packed__)) "+strings.ToUpper(modelTag)+"_QuantizationParameters_%d;\n", index)
	h_code += "\n"

	return h_code
}

func tensorToStruct(modelTag string, tensor *modelparser.Tensor, index int, buffers []modelparser.Buffer) string {
	h_code := ""

	if tensor.Quantization.Quantized_dimension != 0 || len(tensor.Quantization.Scale) > 0 || len(tensor.Quantization.Zero_point) > 0 {
		h_code += quantizationParametersToStruct(modelTag, &tensor.Quantization, index)
	}
	h_code += "typedef struct {\n"
	h_code += "    TensorType type;\n"
	h_code += "    char pad[3];\n"
	h_code += fmt.Sprintf("    int32_t shape[%d];\n", len(tensor.Shape))
	if tensor.Quantization.Quantized_dimension != 0 || len(tensor.Quantization.Scale) > 0 || len(tensor.Quantization.Zero_point) > 0 {
		h_code += fmt.Sprintf("    "+strings.ToUpper(modelTag)+"_QuantizationParameters_%d quantization;\n", index)
	}
	buffer := buffers[tensor.Buffer]
	if len(buffer.Data) > 0 {
		h_code += fmt.Sprintf("    unsigned char data[%d];\n", len(buffer.Data))
	}
	h_code += fmt.Sprintf("} "+strings.ToUpper(modelTag)+"_Tensor_%d;\n", index)
	h_code += "\n"

	return h_code
}

func tensorsToStruct(modelTag string, tensors []modelparser.Tensor) string {
	h_code := ""

	h_code += "typedef struct {\n"
	for i := range tensors {
		h_code += fmt.Sprintf("    "+strings.ToUpper(modelTag)+"_Tensor_%d tensor_%d;\n", i, i)
	}
	h_code += "} __attribute__((__packed__)) " + strings.ToUpper(modelTag) + "_Tensors;\n"
	h_code += "\n"

	return h_code
}

func getTensorFunc(modelTag string, tensors []modelparser.Tensor) string {
	c_code := ""

	c_code += "uint8_t *" + strings.ToUpper(modelTag) + "_get_tensor(const " + strings.ToUpper(modelTag) + "_Tensors *tensors, int index){\n"
	c_code += fmt.Sprintf("    uint32_t sizes[%d] = {0", len(tensors))
	for i := range tensors[0 : len(tensors)-1] {
		temp := fmt.Sprintf(",\nsizeof(tensors->tensor_%d)", i)
		for j := range tensors[0:i] {
			temp += fmt.Sprintf(" + sizeof(tensors->tensor_%d)", j)
		}
		c_code += temp

	}
	c_code += "};\n"
	c_code += "    return (uint8_t *)tensors + sizes[index];\n"
	c_code += "}\n"
	c_code += "\n"

	return c_code
}

func getTensorFuncH(modelTag string, tensors []modelparser.Tensor) string {
	h_code := ""

	h_code += "uint8_t *" + strings.ToUpper(modelTag) + "_get_tensor(const " + strings.ToUpper(modelTag) + "_Tensors *tensors, int index);\n"
	h_code += "\n"

	return h_code
}
