package modelencoder

import (
	"fmt"
	"os"
	dataencoder "tflite-compile/data-encoder"
	modelparser "tflite-compile/model-parser"
)

func Endcode(m *modelparser.Model) error {
	c_code_b, h_code_b := EncodeBuffers(m.Buffers)
	c_code_t, h_code_t := EncodeTensors(m.Tensors)
	c_code_o, h_code_o := EncodeOperators(m.Operators)
	c_code_m, h_code_m := endcodeModel(m)

	path := "/Users/janstiefel/code/Riotee_AppTemplate/src/model"

	// os.Mkdir("build", 0755)
	err := os.WriteFile(path+"/buffer.c", []byte(c_code_b), 0644)
	if err != nil {
		return err
	}
	err = os.WriteFile(path+"/buffer.h", []byte(h_code_b), 0644)
	if err != nil {
		return err
	}
	err = os.WriteFile(path+"/tensor.c", []byte(c_code_t), 0644)
	if err != nil {
		return err
	}
	err = os.WriteFile(path+"/tensor.h", []byte(h_code_t), 0644)
	if err != nil {
		return err
	}
	err = os.WriteFile(path+"/operator.c", []byte(c_code_o), 0644)
	if err != nil {
		return err
	}
	err = os.WriteFile(path+"/operator.h", []byte(h_code_o), 0644)
	if err != nil {
		return err
	}
	err = os.WriteFile(path+"/model.c", []byte(c_code_m), 0644)
	if err != nil {
		return err
	}
	err = os.WriteFile(path+"/model.h", []byte(h_code_m), 0644)

	return err
}

func endcodeModel(m *modelparser.Model) (string, string) {
	c_code := ""
	c_code += "#include <stdio.h>\n"
	c_code += "#include <stdint.h>\n"
	c_code += "#include \"buffer.h\"\n"
	c_code += "#include \"tensor.h\"\n"
	c_code += "#include \"operator.h\"\n"
	c_code += "#include \"model.h\"\n"
	c_code += "#include \"printf.h\"\n"
	c_code += "\n"
	c_code += printModelPointer(m)

	c_code += "__aligned(16) const unsigned char model_data_raw[] = {"
	dataBytes := dataencoder.EncodeModelIntoBytes(m)
	for i, b := range dataBytes {
		if i%16 == 0 {
			c_code += "\n    "
		}
		c_code += "0x" + fmt.Sprintf("%02x", b) + ", "
	}
	c_code += "\n};\n"

	h_code := ""
	h_code += "#ifndef MODEL_H\n"
	h_code += "#define MODEL_H\n"
	h_code += "\n"
	h_code += "#include <stdio.h>\n"
	h_code += "#include <stdint.h>\n"
	h_code += "#include \"buffer.h\"\n"
	h_code += "#include \"tensor.h\"\n"
	h_code += "#include \"operator.h\"\n"
	h_code += "\n"

	h_code += "typedef struct {\n"
	h_code += "    uint32_t version;\n"
	h_code += "    Buffers buffers;\n"
	h_code += "    Tensors tensors;\n"
	h_code += "    Operators operators;\n"
	h_code += fmt.Sprintf("    int32_t inputs[%d];\n", len(m.Inputs))
	h_code += fmt.Sprintf("    int32_t outputs[%d];\n", len(m.Outputs))
	h_code += "} Model;\n"
	h_code += "\n"

	h_code += "extern const unsigned char model_data_raw[];"
	h_code += "\n"
	h_code += printModelPointerH(m)
	h_code += "#endif // MODEL_H\n"

	return c_code, h_code
}

func printModelPointer(m *modelparser.Model) string {
	c_code := ""

	c_code += "void print_model_pointer(Model *model){\n"
	c_code += "    printf(\"Model: %p\\r\\n\", model);\n"
	c_code += "    printf(\"Model version: %d\\r\\n\", model->version);\n"
	c_code += "    printf(\"[%x, %x, %x, %x]\\r\\n\", &model->version, &model->buffers, &model->tensors, &model->operators);\n"
	c_code += "}\n"
	c_code += "\n"

	return c_code
}

func printModelPointerH(m *modelparser.Model) string {
	h_code := ""

	h_code += "void print_model_pointer(Model *model);\n"
	h_code += "\n"

	return h_code
}
