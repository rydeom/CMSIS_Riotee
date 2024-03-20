package modelencoder

import (
	"fmt"
	"tflite-compile/model-encoder/tensor"
	modelparser "tflite-compile/model-parser"
)

func EncodeTensors(tensors []modelparser.Tensor, buffers []modelparser.Buffer) (string, string) {
	c_get_tensor_size, h_get_tensor_size := tensor.GetTensorSize(tensors)

	c_code := ""
	c_code += "#include <stdio.h>\n"
	c_code += "#include <stdint.h>\n"
	c_code += "#include \"tensor.h\"\n"
	c_code += "#include \"printf.h\"\n"
	c_code += "#include \"arm_nn_types.h\"\n"
	c_code += "\n"
	c_code += getTensorFunc(tensors)
	// c_code += printTensorPointer(tensors)
	c_code += c_get_tensor_size

	h_code := ""
	h_code += "#ifndef TENSOR_H\n"
	h_code += "#define TENSOR_H\n"
	h_code += "\n"

	h_code += "#include <stdio.h>\n"
	h_code += "#include <stdint.h>\n"
	h_code += "#include \"arm_nn_types.h\"\n"
	h_code += "\n"

	h_code += tensorTypeToEnum()
	for i, tensor := range tensors {
		h_code += tensorToStruct(&tensor, i, buffers)
	}
	h_code += tensorsToStruct(tensors)
	h_code += getTensorFuncH(tensors)
	// h_code += printTensorPointerH(tensors)
	h_code += h_get_tensor_size
	h_code += "#endif // TENSOR_H\n"

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

func quantizationParametersToStruct(quantizationParameters *modelparser.QuantizationParameters, index int) string {
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
	h_code += fmt.Sprintf("} __attribute__((__packed__)) QuantizationParameters_%d;\n", index)
	h_code += "\n"

	return h_code
}

func tensorToStruct(tensor *modelparser.Tensor, index int, buffers []modelparser.Buffer) string {
	h_code := ""

	if tensor.Quantization.Quantized_dimension != 0 || len(tensor.Quantization.Scale) > 0 || len(tensor.Quantization.Zero_point) > 0 {
		h_code += quantizationParametersToStruct(&tensor.Quantization, index)
	}
	h_code += "typedef struct {\n"
	h_code += "    TensorType type;\n"
	h_code += "    char pad[3];\n"
	h_code += fmt.Sprintf("    int32_t shape[%d];\n", len(tensor.Shape))
	h_code += "    uint32_t buffer;\n"
	if tensor.Quantization.Quantized_dimension != 0 || len(tensor.Quantization.Scale) > 0 || len(tensor.Quantization.Zero_point) > 0 {
		h_code += fmt.Sprintf("    QuantizationParameters_%d quantization;\n", index)
	}
	buffer := buffers[tensor.Buffer]
	if len(buffer.Data) > 0 {
		h_code += fmt.Sprintf("    unsigned char data[%d];\n", len(buffer.Data))
	}
	h_code += fmt.Sprintf("} Tensor_%d;\n", index)
	h_code += "\n"

	return h_code
}

func tensorsToStruct(tensors []modelparser.Tensor) string {
	h_code := ""

	h_code += "typedef struct {\n"
	for i := range tensors {
		h_code += fmt.Sprintf("    Tensor_%d tensor_%d;\n", i, i)
	}
	h_code += "} __attribute__((__packed__)) Tensors;\n"
	h_code += "\n"

	return h_code
}

func getTensorFunc(tensors []modelparser.Tensor) string {
	c_code := ""

	c_code += "uint8_t *get_tensor(Tensors *tensors, int index){\n"
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

func getTensorFuncH(tensors []modelparser.Tensor) string {
	h_code := ""

	h_code += "uint8_t *get_tensor(Tensors *tensors, int index);\n"
	h_code += "\n"

	return h_code
}

func printTensorPointer(tensors []modelparser.Tensor) string {
	c_code := ""

	c_code += "void print_tensor_pointer(Tensors *tensors){\n"
	for i := range tensors {
		c_code += fmt.Sprintf("    printf(\"Tensor %d type: %%d, buffer: %%d\\r\\n\", ((Tensor_%d *)get_tensor(tensors, %d))->type, ((Tensor_%d *)get_tensor(tensors, %d))->buffer);\n", i, i, i, i, i)
		c_code += fmt.Sprintf("    printf(\"Tensor %d shape: \\r\\n\", %d);\n", i, i)
		for j := range tensors[i].Shape {
			c_code += fmt.Sprintf("    printf(\"%%d \", ((Tensor_%d *)get_tensor(tensors, %d))->shape[%d]);\n", i, i, j)
		}
		c_code += "    printf(\"\\r\\n\");\n"
	}
	c_code += "}\n"
	c_code += "\n"

	return c_code
}

func printTensorPointerH(tensors []modelparser.Tensor) string {
	h_code := ""

	h_code += "void print_tensor_pointer(Tensors *tensors);\n"
	h_code += "\n"

	return h_code
}
