#include "utils.h"
#include <stdint.h>
#include <stdbool.h>
#include <limits.h>
#include <math.h>
#include "operator.h"

int32_t flatSizeSkipDim(int32_t dims, int32_t *dims_data, int32_t skip_dim)
{
    int32_t flat_size = 1;
    for (int32_t i = 0; i < dims; ++i)
    {
        flat_size *= (i == skip_dim) ? 1 : dims_data[i];
    }
    return flat_size;
}

int quantize(float scale, int32_t zero_point, float f, int32_t *q)
{
    const float tmp = round(f / scale);
    const bool no_integer_overflow_from_quantization = (tmp >= (float)INT_MIN && tmp <= (float)INT_MAX);
    if (!no_integer_overflow_from_quantization)
    {
        return -1;
    }

    *q = ((int32_t)(tmp)) + zero_point;

    return 0;
}

int quantizeInt8(float scale, int32_t zero_point, float f, int8_t *q)
{
    int32_t tmp_q;
    int ret = quantize(scale, zero_point, f, &tmp_q);
    if (ret == 0)
    {
        *q = (int8_t)tmp_q;
    }
    return ret;
}

int calculateActivationRangeQuantized(ActivationFunctionType activation,
    TensorType type,
    float scale,
    int32_t zero_point,
    int32_t *act_min,
    int32_t *act_max)
{
    int32_t qmin = 0;
    int32_t qmax = 0;
    if (type == UINT8)
    {
        qmin = 0;
        qmax = UINT8_MAX;
    }
    else if (type == INT8)
    {
        qmin = INT8_MIN;
        qmax = INT8_MAX;
    }
    else if (type == INT16)
    {
        qmin = INT16_MIN;
        qmax = INT16_MAX;
    }
    else
    {
        return -1;
    }

    int32_t tmp_q;
    int ret = 0;
    if (activation == NONE)
    {
        ret = quantize(scale, zero_point, 0.0, &tmp_q);
        *act_min = fmax(qmin, tmp_q);
        *act_max = qmax;
    }
    else if (activation == RELU6)
    {
        ret = quantize(scale, zero_point, 6.0, &tmp_q);
        *act_min = fmax(qmin, tmp_q);
        ret = quantize(scale, zero_point, 6.0, &tmp_q);
        *act_max = fmin(qmax, tmp_q);
    }
    else if (activation == RELU_N1_TO_1)
    {
        ret = quantize(scale, zero_point, -1.0, &tmp_q);
        *act_min = fmax(qmin, tmp_q);
        ret = quantize(scale, zero_point, 1.0, &tmp_q);
        *act_max = fmin(qmax, tmp_q);
    }
    else
    {
        *act_min = qmin;
        *act_max = qmax;
    }
    return ret;
}

void quantizeMultiplier(int32_t *quantized_multiplier,
    int *shift,
    float input_scale,
    float filter_scale,
    float output_scale)
{
    double double_multiplier = ((double)input_scale) * ((double)filter_scale) / ((double)output_scale);
    if (double_multiplier == 0.)
    {
        *quantized_multiplier = 0;
        *shift = 0;
        return;
    }

    const double q = frexp(double_multiplier, shift);
    int64_t q_fixed = (int64_t)(round(q * (1LL << 31)));
    if (q_fixed == (1LL << 31))
    {
        q_fixed /= 2;
        ++*shift;
    }

    if (*shift < -31)
    {
        *shift = 0;
        q_fixed = 0;
    }
    *quantized_multiplier = (int32_t)(q_fixed);
}

