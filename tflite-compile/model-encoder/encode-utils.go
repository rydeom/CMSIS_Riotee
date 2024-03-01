package modelencoder

func EncodeUtils() (string, string) {
	c_code := ""
	c_code += "#include \"utils.h\"\n"
	c_code += "#include <stdint.h>\n"
	c_code += "#include <stdbool.h>\n"
	c_code += "#include <limits.h>\n"
	c_code += "#include <math.h>\n"
	c_code += "#include \"operator.h\"\n"
	c_code += "\n"
	c_code += flatSizeSkipDim()
	c_code += quantize()
	c_code += quantizeInt8()
	c_code += calculateActivationRangeQuantized()
	c_code += quantizeMultiplier()

	h_code := ""
	h_code += "#ifndef UTILS_H\n"
	h_code += "#define UTILS_H\n"
	h_code += "#include <stdint.h>\n"
	h_code += "#include <stdbool.h>\n"
	h_code += "#include \"operator.h\"\n"
	h_code += "\n"
	h_code += flatSizeSkipDimH()
	h_code += quantizeH()
	h_code += quantizeInt8H()
	h_code += calculateActivationRangeQuantizedH()
	h_code += quantizeMultiplierH()
	h_code += "#endif\n"

	return c_code, h_code
}

func flatSizeSkipDim() string {
	c_code := ""

	c_code += "int32_t flatSizeSkipDim(int32_t dims, int32_t *dims_data, int32_t skip_dim)\n"
	c_code += "{\n"
	c_code += "    int32_t flat_size = 1;\n"
	c_code += "    for (int32_t i = 0; i < dims; ++i)\n"
	c_code += "    {\n"
	c_code += "        flat_size *= (i == skip_dim) ? 1 : dims_data[i];\n"
	c_code += "    }\n"
	c_code += "    return flat_size;\n"
	c_code += "}\n"
	c_code += "\n"

	return c_code
}

func flatSizeSkipDimH() string {
	h_code := ""

	h_code += "int32_t flatSizeSkipDim(int32_t dims, int32_t *dims_data, int32_t skip_dim);\n"
	h_code += "\n"

	return h_code
}

func quantize() string {
	c_code := ""

	c_code += "int quantize(float scale, int32_t zero_point, float f, int32_t *q)\n"
	c_code += "{\n"
	c_code += "    const float tmp = round(f / scale);\n"
	c_code += "    const bool no_integer_overflow_from_quantization = (tmp >= (float)INT_MIN && tmp <= (float)INT_MAX);\n"
	c_code += "    if (!no_integer_overflow_from_quantization)\n"
	c_code += "    {\n"
	c_code += "        return -1;\n"
	c_code += "    }\n"
	c_code += "\n"
	c_code += "    *q = ((int32_t)(tmp)) + zero_point;\n"
	c_code += "\n"
	c_code += "    return 0;\n"
	c_code += "}\n"
	c_code += "\n"

	return c_code
}

func quantizeH() string {
	h_code := ""

	h_code += "int quantize(float scale, int32_t zero_point, float f, int32_t *q);\n"
	h_code += "\n"

	return h_code
}

func quantizeInt8() string {
	c_code := ""

	c_code += "int quantizeInt8(float scale, int32_t zero_point, float f, int8_t *q)\n"
	c_code += "{\n"
	c_code += "    int32_t tmp_q;\n"
	c_code += "    int ret = quantize(scale, zero_point, f, &tmp_q);\n"
	c_code += "    if (ret == 0)\n"
	c_code += "    {\n"
	c_code += "        *q = (int8_t)tmp_q;\n"
	c_code += "    }\n"
	c_code += "    return ret;\n"
	c_code += "}\n"
	c_code += "\n"

	return c_code
}

func quantizeInt8H() string {
	h_code := ""

	h_code += "int quantizeInt8(float scale, int32_t zero_point, float f, int8_t *q);\n"
	h_code += "\n"

	return h_code
}

func calculateActivationRangeQuantized() string {
	c_code := ""

	c_code += "int calculateActivationRangeQuantized(ActivationFunctionType activation,\n"
	c_code += "    TensorType type,\n"
	c_code += "    float scale,\n"
	c_code += "    int32_t zero_point,\n"
	c_code += "    int32_t *act_min,\n"
	c_code += "    int32_t *act_max)\n"
	c_code += "{\n"
	c_code += "    int32_t qmin = 0;\n"
	c_code += "    int32_t qmax = 0;\n"
	c_code += "    if (type == UINT8)\n"
	c_code += "    {\n"
	c_code += "        qmin = 0;\n"
	c_code += "        qmax = UINT8_MAX;\n"
	c_code += "    }\n"
	c_code += "    else if (type == INT8)\n"
	c_code += "    {\n"
	c_code += "        qmin = INT8_MIN;\n"
	c_code += "        qmax = INT8_MAX;\n"
	c_code += "    }\n"
	c_code += "    else if (type == INT16)\n"
	c_code += "    {\n"
	c_code += "        qmin = INT16_MIN;\n"
	c_code += "        qmax = INT16_MAX;\n"
	c_code += "    }\n"
	c_code += "    else\n"
	c_code += "    {\n"
	c_code += "        return -1;\n"
	c_code += "    }\n"
	c_code += "\n"
	c_code += "    int32_t tmp_q;\n"
	c_code += "    int ret = 0;\n"
	c_code += "    if (activation == NONE)\n"
	c_code += "    {\n"
	c_code += "        ret = quantize(scale, zero_point, 0.0, &tmp_q);\n"
	c_code += "        *act_min = fmax(qmin, tmp_q);\n"
	c_code += "        *act_max = qmax;\n"
	c_code += "    }\n"
	c_code += "    else if (activation == RELU6)\n"
	c_code += "    {\n"
	c_code += "        ret = quantize(scale, zero_point, 6.0, &tmp_q);\n"
	c_code += "        *act_min = fmax(qmin, tmp_q);\n"
	c_code += "        ret = quantize(scale, zero_point, 6.0, &tmp_q);\n"
	c_code += "        *act_max = fmin(qmax, tmp_q);\n"
	c_code += "    }\n"
	c_code += "    else if (activation == RELU_N1_TO_1)\n"
	c_code += "    {\n"
	c_code += "        ret = quantize(scale, zero_point, -1.0, &tmp_q);\n"
	c_code += "        *act_min = fmax(qmin, tmp_q);\n"
	c_code += "        ret = quantize(scale, zero_point, 1.0, &tmp_q);\n"
	c_code += "        *act_max = fmin(qmax, tmp_q);\n"
	c_code += "    }\n"
	c_code += "    else\n"
	c_code += "    {\n"
	c_code += "        *act_min = qmin;\n"
	c_code += "        *act_max = qmax;\n"
	c_code += "    }\n"
	c_code += "    return ret;\n"
	c_code += "}\n"
	c_code += "\n"

	return c_code
}

func calculateActivationRangeQuantizedH() string {
	h_code := ""

	h_code += "int calculateActivationRangeQuantized(ActivationFunctionType activation,\n"
	h_code += "    TensorType type,\n"
	h_code += "    float scale,\n"
	h_code += "    int32_t zero_point,\n"
	h_code += "    int32_t *act_min,\n"
	h_code += "    int32_t *act_max);\n"
	h_code += "\n"

	return h_code
}

func quantizeMultiplier() string {
	c_code := ""

	c_code += "void quantizeMultiplier(int32_t *quantized_multiplier,\n"
	c_code += "    int *shift,\n"
	c_code += "    float input_scale,\n"
	c_code += "    float filter_scale,\n"
	c_code += "    float output_scale)\n"
	c_code += "{\n"
	c_code += "    double double_multiplier = ((double)input_scale) * ((double)filter_scale) / ((double)output_scale);\n"
	c_code += "    if (double_multiplier == 0.)\n"
	c_code += "    {\n"
	c_code += "        *quantized_multiplier = 0;\n"
	c_code += "        *shift = 0;\n"
	c_code += "        return;\n"
	c_code += "    }\n"
	c_code += "\n"
	c_code += "    const double q = frexp(double_multiplier, shift);\n"
	c_code += "    int64_t q_fixed = (int64_t)(round(q * (1LL << 31)));\n"
	c_code += "    if (q_fixed == (1LL << 31))\n"
	c_code += "    {\n"
	c_code += "        q_fixed /= 2;\n"
	c_code += "        ++*shift;\n"
	c_code += "    }\n"
	c_code += "\n"
	c_code += "    if (*shift < -31)\n"
	c_code += "    {\n"
	c_code += "        *shift = 0;\n"
	c_code += "        q_fixed = 0;\n"
	c_code += "    }\n"
	c_code += "    *quantized_multiplier = (int32_t)(q_fixed);\n"
	c_code += "}\n"
	c_code += "\n"

	return c_code
}

func quantizeMultiplierH() string {
	h_code := ""

	h_code += "void quantizeMultiplier(int32_t *quantized_multiplier,\n"
	h_code += "    int *shift,\n"
	h_code += "    float input_scale,\n"
	h_code += "    float filter_scale,\n"
	h_code += "    float output_scale);\n"
	h_code += "\n"

	return h_code
}
