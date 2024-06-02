package tensor

import (
	"fmt"
	"strings"
	modelparser "tflite-compile/model-parser"
)

func GetTensorSize(modelTag string, tensors []modelparser.Tensor) (string, string) {
	return getIndexedTensorSizeToCMSISFunc(modelTag, tensors), getIndexedTensorSizeToCMSISFuncH(modelTag, tensors)
}

func getIndexedTensorSizeToCMSISFunc(modelTag string, tensors []modelparser.Tensor) string {
	c_code := ""

	for i, tensor := range tensors {
		c_code += getTensorSizeToCMSISFunc(modelTag, tensor, i)
	}

	c_code += "void " + strings.ToUpper(modelTag) + "_get_tensor_size(" + strings.ToUpper(modelTag) + "_Tensors *tensors, cmsis_nn_dims *dims, int index){\n"
	c_code += "    switch(index){\n"
	for i := range tensors {
		c_code += fmt.Sprintf("        case %d:\n", i)
		c_code += fmt.Sprintf("            "+strings.ToUpper(modelTag)+"_get_tensor_size_%d(tensors, dims);\n", i)
		c_code += "            break;\n"
	}
	c_code += "    }\n"
	c_code += "}\n"
	c_code += "\n"

	return c_code
}

func getIndexedTensorSizeToCMSISFuncH(modelTag string, tensors []modelparser.Tensor) string {
	h_code := ""

	for i, tensor := range tensors {
		h_code += getTensorSizeToCMSISFuncH(modelTag, tensor, i)
	}

	h_code += "void " + strings.ToUpper(modelTag) + "_get_tensor_size(" + strings.ToUpper(modelTag) + "_Tensors *tensors, cmsis_nn_dims *dims, int index);\n"
	h_code += "\n"

	return h_code
}

func getTensorSizeToCMSISFunc(modelTag string, tensor modelparser.Tensor, index int) string {
	c_code := ""

	c_code += fmt.Sprintf("void "+strings.ToUpper(modelTag)+"_get_tensor_size_%d("+strings.ToUpper(modelTag)+"_Tensors *tensors, cmsis_nn_dims *dims){\n", index)
	if len(tensor.Shape) >= 1 {
		c_code += fmt.Sprintf("    dims->n = (("+strings.ToUpper(modelTag)+"_Tensor_%d *)"+strings.ToUpper(modelTag)+"_get_tensor(tensors, %d))->shape[0];\n", index, index)
	}
	if len(tensor.Shape) >= 2 {
		c_code += fmt.Sprintf("    dims->h = (("+strings.ToUpper(modelTag)+"_Tensor_%d *)"+strings.ToUpper(modelTag)+"_get_tensor(tensors, %d))->shape[1];\n", index, index)
	}
	if len(tensor.Shape) >= 3 {
		c_code += fmt.Sprintf("    dims->w = (("+strings.ToUpper(modelTag)+"_Tensor_%d *)"+strings.ToUpper(modelTag)+"_get_tensor(tensors, %d))->shape[2];\n", index, index)
	}
	if len(tensor.Shape) >= 4 {
		c_code += fmt.Sprintf("    dims->c = (("+strings.ToUpper(modelTag)+"_Tensor_%d *)"+strings.ToUpper(modelTag)+"_get_tensor(tensors, %d))->shape[3];\n", index, index)
	}
	c_code += "}\n"
	c_code += "\n"

	return c_code
}

func getTensorSizeToCMSISFuncH(modelTag string, tensor modelparser.Tensor, index int) string {
	h_code := ""

	h_code += fmt.Sprintf("void "+strings.ToUpper(modelTag)+"_get_tensor_size_%d("+strings.ToUpper(modelTag)+"_Tensors *tensors, cmsis_nn_dims *dims);\n", index)
	h_code += "\n"

	return h_code
}
