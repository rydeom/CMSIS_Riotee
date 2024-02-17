package modelencoder

import (
	"fmt"
	"strings"
	modelparser "tflite-compile/model-parser"
)

func EncodeBuffers(buffers []modelparser.Buffer) (string, string) {
	c_code := ""
	c_code += "#include <stdio.h>\n"
	c_code += "#include <stdint.h>\n"
	c_code += "#include \"buffer.h\"\n"
	c_code += "#include \"printf.h\"\n"
	c_code += "\n"
	c_code += getBufferFunc(buffers)
	c_code += printBufferPointer(buffers)

	h_code := ""
	h_code += "#ifndef BUFFER_H\n"
	h_code += "#define BUFFER_H\n"
	h_code += "\n"

	h_code += "#include <stdio.h>\n"
	h_code += "#include <stdint.h>\n"
	h_code += "\n"

	for i, buffer := range buffers {
		h_code += bufferToStruct(&buffer, i)
	}
	h_code += buffersToStruct(buffers)
	h_code += getBufferFuncH(buffers)
	h_code += printBufferPointerH(buffers)
	h_code += "#endif // BUFFER_H\n"

	return c_code, h_code
}

func getBufferFunc(buffers []modelparser.Buffer) string {
	c_code := ""

	c_code += "uint8_t *get_buffer(Buffers *buffers, int index){\n"
	c_code += fmt.Sprintf("    uint32_t sizes[%d] = {0", len(buffers))
	for i := range buffers[0 : len(buffers)-1] {
		temp := fmt.Sprintf(",\nsizeof(buffers->buffer_%d)", i)
		for j := range buffers[0:i] {
			temp += fmt.Sprintf(" + sizeof(buffers->buffer_%d)", j)
		}
		c_code += temp

	}
	c_code += "};\n"
	c_code += "    return (uint8_t *)buffers + sizes[index];\n"
	c_code += "}\n"
	c_code += "\n"

	return c_code
}

func getBufferFuncH(buffers []modelparser.Buffer) string {
	h_code := ""

	h_code += "uint8_t *get_buffer(Buffers *buffers, int index);\n"
	h_code += "\n"

	return h_code
}

func buffersToStruct(buffers []modelparser.Buffer) string {
	h_code := ""

	h_code += "typedef struct {\n"
	for i := range buffers {
		h_code += fmt.Sprintf("    Buffer_%d buffer_%d;\n", i, i)
	}
	h_code += "} Buffers;\n"
	h_code += "\n"

	return h_code
}

func bufferToStruct(buffer *modelparser.Buffer, i int) string {
	h_code := ""

	h_code += "typedef struct {\n"
	h_code += fmt.Sprintf("    unsigned char data[%d];\n", len(buffer.Data))
	h_code += fmt.Sprintf("} Buffer_%d;\n", i)
	h_code += "\n"

	return h_code
}

func printBufferPointer(buffers []modelparser.Buffer) string {
	c_code := ""

	c_code += "void print_buffer_pointer(Buffers *buffers) {\n"
	c_code += "    printf(\"Buffers: ["
	for range buffers {
		c_code += "%x, "
	}
	c_code = strings.TrimSuffix(c_code, ", ")
	c_code += "]\\r\\n\", "
	for i := range buffers {
		c_code += fmt.Sprintf("&buffers->buffer_%d, ", i)
	}
	c_code = strings.TrimSuffix(c_code, ", ")
	c_code += ");\n"
	c_code += "}\n"
	c_code += "\n"

	return c_code
}

func printBufferPointerH(buffers []modelparser.Buffer) string {
	h_code := ""

	h_code += "void print_buffer_pointer(Buffers *buffers);\n"
	h_code += "\n"

	return h_code
}
