#include "operator.h"
#include <limits.h>
#include <math.h>
#include <stdbool.h>

void calculate_activation_range(ActivationFunctionType activation,
                                int32_t *activation_min, int32_t *activation_max)
{
    if (activation == NONE)
    {
        *activation_min = 0;
        *activation_max = INT_MAX;
    }
    else if (activation == RELU6)
    {
        *activation_min = 0;
        *activation_max = 6;
    }
    else if (activation == RELU_N1_TO_1)
    {
        *activation_min = -1;
        *activation_max = 1;
    }
    else
    {
        *activation_min = INT_MIN;
        *activation_max = INT_MAX;
    }
}

int Quantize(float scale, int32_t zero_point, float f, int32_t *q)
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

int CalculateActivationRangeQuantizedImpl(ActivationFunctionType activation, int32_t qmin,
                                          int32_t qmax, int32_t *act_min, int32_t *act_max,
                                          float scale, int32_t zero_point)
{
    int32_t tmp_q;
    if (activation == 0)
    {
        int ret = Quantize(scale, zero_point, 0.0, &tmp_q);
        if (ret != 0)
        {
            return -1;
        }
        *act_min = max(qmin, tmp_q);
        *act_max = qmax;
    }
    else if (activation == 3)
    {
        int ret = Quantize(scale, zero_point, 6.0, &tmp_q);
        if (ret != 0)
        {
            return -1;
        }
        *act_min = max(qmin, tmp_q);
        ret = Quantize(scale, zero_point, 6.0, &tmp_q);
        if (ret != 0)
        {
            return -1;
        }
        *act_max = min(qmax, tmp_q);
    }
    else if (activation == 2)
    {
        int ret = Quantize(scale, zero_point, -1.0, &tmp_q);
        if (ret != 0)
        {
            return -1;
        }
        *act_min = max(qmin, tmp_q);
        ret = Quantize(scale, zero_point, 1.0, &tmp_q);
        if (ret != 0)
        {
            return -1;
        }
        *act_max = min(qmax, tmp_q);
    }
    else
    {
        *act_min = qmin;
        *act_max = qmax;
    }
    return 0;
}

int CalculateActivationRangeQuantized(ActivationFunctionType activation,
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

    return CalculateActivationRangeQuantizedImpl(activation, qmin, qmax, act_min, act_max, scale, zero_point);
}