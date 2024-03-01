package modelencoder

func EncodeFullyConnectedUtils() (string, string) {
	c_code := ""
	c_code += "#include \"fully_connected_utils.h\"\n"
	c_code += "#include <stdint.h>\n"
	c_code += "#include \"arm_nn_types.h\"\n"
	c_code += "#include \"operator.h\"\n"
	c_code += "#include \"utils.h\"\n"
	c_code += "\n"
	c_code += fillDims()
	c_code += fill_fc_params()
	c_code += fill_quant_params()

	h_code := ""
	h_code += "#ifndef FULLY_CONNECTED_UTILS_H\n"
	h_code += "#define FULLY_CONNECTED_UTILS_H\n"
	h_code += "#include <stdint.h>\n"
	h_code += "#include \"arm_nn_types.h\"\n"
	h_code += "#include \"operator.h\"\n"
	h_code += "\n"
	h_code += fillDimsH()
	h_code += fill_fc_paramsH()
	h_code += fill_quant_paramsH()
	h_code += "#endif\n"

	return c_code, h_code
}

func fillDims() string {
	c_code := ""

	c_code += "void fill_dims(cmsis_nn_dims *input_dims, cmsis_nn_dims *filter_dims, cmsis_nn_dims *bias_dims, cmsis_nn_dims *output_dims, int32_t *weights, int32_t weights_size, int32_t *output, int32_t output_size)\n"
	c_code += "{\n"
	c_code += "    int32_t batches = flatSizeSkipDim(weights_size, weights, 0);\n"
	c_code += "    int32_t accum_depth = weights[weights_size - 1];\n"
	c_code += "    int32_t output_depth = output[output_size - 1];\n"
	c_code += "\n"
	c_code += "    input_dims->n = batches;\n"
	c_code += "    input_dims->h = 1;\n"
	c_code += "    input_dims->w = 1;\n"
	c_code += "    input_dims->c = accum_depth;\n"
	c_code += "\n"
	c_code += "    filter_dims->n = accum_depth;\n"
	c_code += "    filter_dims->h = 1;\n"
	c_code += "    filter_dims->w = 1;\n"
	c_code += "    filter_dims->c = output_depth;\n"
	c_code += "\n"
	c_code += "    bias_dims->n = 1;\n"
	c_code += "    bias_dims->h = 1;\n"
	c_code += "    bias_dims->w = 1;\n"
	c_code += "    bias_dims->c = output_depth;\n"
	c_code += "\n"
	c_code += "    output_dims->n = batches;\n"
	c_code += "    output_dims->h = 1;\n"
	c_code += "    output_dims->w = 1;\n"
	c_code += "    output_dims->c = output_depth;\n"
	c_code += "}\n"
	c_code += "\n"

	return c_code
}

func fillDimsH() string {
	h_code := ""

	h_code += "void fill_dims(cmsis_nn_dims *input_dims, cmsis_nn_dims *filter_dims, cmsis_nn_dims *bias_dims, cmsis_nn_dims *output_dims, int32_t *weights, int32_t weights_size, int32_t *output, int32_t output_size);\n"
	h_code += "\n"

	return h_code
}

func fill_fc_params() string {
	c_code := ""

	c_code += "void fill_fc_params(cmsis_nn_fc_params *fc_params, ActivationFunctionType activation, TensorType input_type, int32_t input_zero_point, float input_scale, int32_t output_zero_point)\n"
	c_code += "{\n"
	c_code += "    fc_params->input_offset = -(input_zero_point);\n"
	c_code += "    fc_params->filter_offset = 0;\n"
	c_code += "    fc_params->output_offset = output_zero_point;\n"
	c_code += "    calculateActivationRangeQuantized(activation, input_type, input_scale, input_zero_point, &fc_params->activation.min, &fc_params->activation.max);\n"
	c_code += "}\n"
	c_code += "\n"

	return c_code
}

func fill_fc_paramsH() string {
	h_code := ""

	h_code += "void fill_fc_params(cmsis_nn_fc_params *fc_params, ActivationFunctionType activation, TensorType input_type, int32_t input_zero_point, float input_scale, int32_t output_zero_point);\n"
	h_code += "\n"

	return h_code
}

func fill_quant_params() string {
	c_code := ""

	c_code += "void fill_quant_params(cmsis_nn_per_tensor_quant_params *quant_params, float input_scale, float weights_scale, float output_scale)\n"
	c_code += "{\n"
	c_code += "    quantizeMultiplier(&quant_params->multiplier, &quant_params->shift, input_scale, weights_scale, output_scale);\n"
	c_code += "}\n"
	c_code += "\n"

	return c_code
}

func fill_quant_paramsH() string {
	h_code := ""

	h_code += "void fill_quant_params(cmsis_nn_per_tensor_quant_params *quant_params, float input_scale, float weights_scale, float output_scale);\n"
	h_code += "\n"

	return h_code
}
