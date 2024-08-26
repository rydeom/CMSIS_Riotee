#ifndef SOFTMAX_H
#define SOFTMAX_H

#include <stdint.h>

typedef struct
{
    int8_t *input;
    const int32_t *input_shape;
    int32_t input_shape_size;
    float input_scale;
    int16_t *output;
    const int32_t *output_shape;

    float beta;
} SoftmaxParams;

#endif // SOFTMAX_H