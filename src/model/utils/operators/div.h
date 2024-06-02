#ifndef DIV_H
#define DIV_H

#include <stdint.h>

typedef struct DivParams
{
    const int32_t *input1_data;
    const int32_t *input2_data;
    int32_t *output_data;

    int32_t output_activation_min;
    int32_t output_activation_max;
    int32_t flat_size;
} DivParams;

inline void Div(const DivParams *params)
{

    for (int i = 0; i < params->flat_size; ++i)
    {
        params->output_data[i] = ActivationFunctionWithMinMax(
            params->input1_data[i] / params->input2_data[i], params->output_activation_min,
            params->output_activation_max);
    }
}

#endif // DIV_H