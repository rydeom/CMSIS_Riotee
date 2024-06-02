#ifndef ADD_H
#define ADD_H

#include <stdint.h>
#include "utils.h"

typedef struct AddParams
{
    const int32_t *input1_data;
    const int32_t *input2_data;
    int32_t *output_data;

    int32_t activation_min;
    int32_t activation_max;
    int32_t flat_size;
} AddParams;

inline int32_t SaturatingRoundingDoublingHighMul(int32_t a,
                                                 int32_t b)
{
    bool overflow = a == b && a == INT32_MIN;
    int64_t a_64 = (int64_t)a;
    int64_t b_64 = (int64_t)b;
    int64_t ab_64 = a_64 * b_64;
    int32_t nudge = ab_64 >= 0 ? (1 << 30) : (1 - (1 << 30));
    int32_t ab_x2_high32 = (int32_t)((ab_64 + nudge) / (1ll << 31));
    return overflow ? INT32_MAX : ab_x2_high32;
}

int32_t MaskIfNonZero(int32_t a)
{
    const int32_t zero = 0;
    return a ? ~zero : zero;
}

inline int32_t RoundingDivideByPOT(int32_t x, int exponent)
{
    const int32_t mask = (1ll << exponent) - 1;
    const int32_t zero = 0;
    const int32_t one = 1;
    const int32_t remainder = x & mask;
    const int32_t threshold =
        (mask >> 1) + ((MaskIfNonZero(x < zero)) & one);

    return (mask >> exponent) + ((MaskIfNonZero(remainder > threshold)) & one);
}

inline int32_t MultiplyByQuantizedMultiplierSmallerThanOneExp(
    int32_t x, int32_t quantized_multiplier, int left_shift)
{
    return RoundingDivideByPOT(
        SaturatingRoundingDoublingHighMul(x, quantized_multiplier), -left_shift);
}

inline void Add(const AddParams *params)
{
    for (int i = 0; i < params->flat_size; ++i)
    {
        params->output_data[i] = ActivationFunctionWithMinMax(
            params->input1_data[i] + params->input2_data[i], params->activation_min, params->activation_max);
    }
}

#endif // ADD_H