package modelencoder

import (
	"fmt"
	"os"
	"strings"
	dataencoder "tflite-compile/data-encoder"
	modelparser "tflite-compile/model-parser"
)

func Endcode(m *modelparser.Model, path string, modelTag string) error {
	c_code_t, h_code_t := EncodeTensors(modelTag, m.Tensors, m.Buffers)
	c_code_o, h_code_o := EncodeOperators(modelTag, m.Operators)
	c_code_m, h_code_m := endcodeModel(m, modelTag)

	err := saveFiles(path, "tensors", modelTag, c_code_t, h_code_t)
	if err != nil {
		return err
	}
	err = saveFiles(path, "operators", modelTag, c_code_o, h_code_o)
	if err != nil {
		return err
	}
	err = saveFiles(path, "model", modelTag, c_code_m, h_code_m)
	if err != nil {
		return err
	}

	return nil
}

func saveFiles(path string, fileName string, modelTag string, c_code string, h_code string) error {
	lowerModelTag := strings.ToLower(modelTag)
	err := os.WriteFile(path+"/"+lowerModelTag+"_"+fileName+".c", []byte(c_code), 0644)
	if err != nil {
		return err
	}
	err = os.WriteFile(path+"/"+lowerModelTag+"_"+fileName+".h", []byte(h_code), 0644)
	if err != nil {
		return err
	}

	return nil
}

func endcodeModel(m *modelparser.Model, modelTag string) (string, string) {
	lowerModelTag := strings.ToLower(modelTag)
	upperModelTag := strings.ToUpper(modelTag)

	c_code := ""
	c_code += "#include <stdio.h>\n"
	c_code += "#include <stdint.h>\n"
	c_code += AddInclude(lowerModelTag + "_model.h")
	c_code += AddInclude(lowerModelTag + "_tensors.h")
	c_code += AddInclude(lowerModelTag + "_operators.h")
	c_code += "\n"

	c_code += "__aligned(16) const unsigned char " + lowerModelTag + "_model_data_raw[] = {"
	dataBytes := dataencoder.EncodeModelIntoBytes(m)
	for i, b := range dataBytes {
		if i%16 == 0 {
			c_code += "\n    "
		}
		c_code += "0x" + fmt.Sprintf("%02x", b) + ", "
	}
	c_code += "\n};\n"

	h_code := ""
	h_code += "#ifndef " + upperModelTag + "_MODEL_H\n"
	h_code += "#define " + upperModelTag + "_MODEL_H\n"
	h_code += "\n"
	h_code += "#include <stdio.h>\n"
	h_code += "#include <stdint.h>\n"
	h_code += AddInclude(lowerModelTag + "_tensors.h")
	h_code += AddInclude(lowerModelTag + "_operators.h")
	h_code += "\n"

	h_code += "typedef struct {\n"
	h_code += "    uint32_t version;\n"
	h_code += "    " + upperModelTag + "_Tensors tensors;\n"
	h_code += "    " + upperModelTag + "_Operators operators;\n"
	h_code += fmt.Sprintf("    int32_t inputs[%d];\n", len(m.Inputs))
	h_code += fmt.Sprintf("    int32_t outputs[%d];\n", len(m.Outputs))
	h_code += "} " + upperModelTag + "_model;\n"
	h_code += "\n"

	h_code += "extern const unsigned char " + lowerModelTag + "_model_data_raw[];\n"
	h_code += "\n"
	h_code += "#endif // " + upperModelTag + "_MODEL_H\n"

	return c_code, h_code
}
