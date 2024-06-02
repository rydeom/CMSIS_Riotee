#ifndef MINIMUM_MAXIMUM_H
#define MINIMUM_MAXIMUM_H

#include <stdint.h>

typedef struct MinimumParams
{
    const int32_t *input1_data;
    const int32_t *input2_data;
    int32_t *output_data;
    int32_t flat_size;
} MinimumParams;

typedef struct MaximumParams
{
    const int32_t *input1_data;
    const int32_t *input2_data;
    int32_t *output_data;
    int32_t flat_size;
} MaximumParams;

inline void Minimum(const MinimumParams *params)
{
    for (int i = 0; i < params->flat_size; ++i)
    {
        params->output_data[i] = (params->input1_data[i] < params->input2_data[i]) ? params->input1_data[i] : params->input2_data[i];
    }
}

inline void Maximum(const MaximumParams *params)
{
    for (int i = 0; i < params->flat_size; ++i)
    {
        params->output_data[i] = (params->input1_data[i] > params->input2_data[i]) ? params->input1_data[i] : params->input2_data[i];
    }
}

#endif // MINIMUM_MAXIMUM_H