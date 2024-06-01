#ifndef CONCATENATION_H
#define CONCATENATION_H

#include <stdint.h>

typedef struct ConcatenationParams
{
    int32_t *input;
    int32_t *output;
    int32_t **input_shapes;
    int32_t *output_shape;
    int32_t output_shape_size;

    int8_t axis;
    uint16_t inputs_count;
} ConcatenationParams;

inline int CalculatePositiveAxis(int axis, const int32_t output_dim_size)
{
    if (axis >= 0)
    {
        return axis;
    }
    else
    {
        return output_dim_size + axis;
    }
}

inline void RunConcatenation(ConcatenationParams *params)
{
    int64_t outer_size = 1;
    for (int i = 0; i < params->axis; ++i)
    {
        outer_size *= params->output_shape[i];
    }
    int64_t base_inner_size = 1;
    for (int i = params->axis + 1; i < params->output_shape_size; ++i)
    {
        base_inner_size *= params->output_shape[i];
    }

    int32_t *output_ptr = params->output;
    for (int k = 0; k < outer_size; k++)
    {
        for (int i = 0; i < params->inputs_count; ++i)
        {
            const int copy_size = params->input_shapes[i][params->axis] * base_inner_size;
            const int32_t *input_ptr = params->input[i] + k * copy_size;
            memcpy(output_ptr, input_ptr, copy_size * sizeof(int32_t));
            output_ptr += copy_size;
        }
    }
}

#endif // CONCATENATION_H