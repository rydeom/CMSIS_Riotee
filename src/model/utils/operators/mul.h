#ifndef MUL_H
#define MUL_H

#include <stdint.h>
#include "utils.h"

typedef struct MulParams
{
    int32_t *input;
    int32_t flat_size;
    int32_t *input2;
    int32_t *output;

    int32_t output_activation_min;
    int32_t output_activation_max;
} MulParams;

inline void Mul(const MulParams *params)
{
    const int32_t *input = params->input;
    const int32_t *input2 = params->input2;
    int32_t *output = params->output;
    const int32_t output_activation_min = params->output_activation_min;
    const int32_t output_activation_max = params->output_activation_max;
    const int32_t flat_size = params->flat_size;

    for (int i = 0; i < flat_size; ++i)
    {
        output[i] = ActivationFunctionWithMinMax(
            input[i] * input2[i], output_activation_min,
            output_activation_max);
    }
}

#endif // MUL_H