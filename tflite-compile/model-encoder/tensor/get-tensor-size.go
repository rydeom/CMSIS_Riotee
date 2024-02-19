package tensor

import (
	"fmt"
	modelparser "tflite-compile/model-parser"
)

func GetTensorSize(tensors []modelparser.Tensor) (string, string) {
	return getIndexedTensorSizeToCMSISFunc(tensors), getIndexedTensorSizeToCMSISFuncH(tensors)
}

func getIndexedTensorSizeToCMSISFunc(tensors []modelparser.Tensor) string {
	c_code := ""

	for i, tensor := range tensors {
		c_code += getTensorSizeToCMSISFunc(tensor, i)
	}

	c_code += "void get_tensor_size(Tensors *tensors, cmsis_nn_dims *dims, int index){\n"
	c_code += "    switch(index){\n"
	for i := range tensors {
		c_code += fmt.Sprintf("        case %d:\n", i)
		c_code += fmt.Sprintf("            get_tensor_size_%d(tensors, dims);\n", i)
		c_code += "            break;\n"
	}
	c_code += "    }\n"
	c_code += "}\n"
	c_code += "\n"

	return c_code
}

func getIndexedTensorSizeToCMSISFuncH(tensors []modelparser.Tensor) string {
	h_code := ""

	for i, tensor := range tensors {
		h_code += getTensorSizeToCMSISFuncH(tensor, i)
	}

	h_code += "void get_tensor_size(Tensors *tensors, cmsis_nn_dims *dims, int index);\n"
	h_code += "\n"

	return h_code
}

func getTensorSizeToCMSISFunc(tensor modelparser.Tensor, index int) string {
	c_code := ""

	c_code += fmt.Sprintf("void get_tensor_size_%d(Tensors *tensors, cmsis_nn_dims *dims){\n", index)
	if len(tensor.Shape) < 1 {
		c_code += "    dims->n = 1;\n"
	} else {
		c_code += fmt.Sprintf("    dims->n = ((Tensor_%d *)get_tensor(tensors, %d))->shape[0];\n", index, index)
	}
	if len(tensor.Shape) < 2 {
		c_code += "    dims->h = 1;\n"
	} else {
		c_code += fmt.Sprintf("    dims->h = ((Tensor_%d *)get_tensor(tensors, %d))->shape[1];\n", index, index)
	}
	if len(tensor.Shape) < 3 {
		c_code += "    dims->w = 1;\n"
	} else {
		c_code += fmt.Sprintf("    dims->w = ((Tensor_%d *)get_tensor(tensors, %d))->shape[2];\n", index, index)
	}
	if len(tensor.Shape) < 4 {
		c_code += "    dims->c = 1;\n"
	} else {
		c_code += fmt.Sprintf("    dims->c = ((Tensor_%d *)get_tensor(tensors, %d))->shape[3];\n", index, index)
	}
	c_code += "}\n"
	c_code += "\n"

	return c_code
}

func getTensorSizeToCMSISFuncH(tensor modelparser.Tensor, index int) string {
	h_code := ""

	h_code += fmt.Sprintf("void get_tensor_size_%d(Tensors *tensors, cmsis_nn_dims *dims);\n", index)
	h_code += "\n"

	return h_code
}
