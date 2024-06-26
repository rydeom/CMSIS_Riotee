#ifndef UTILS_H
#define UTILS_H
#include <stdint.h>
#include <stdbool.h>
#include "operator.h"

int32_t flatSizeSkipDim(int32_t dims, int32_t *dims_data, int32_t skip_dim);

int quantize(float scale, int32_t zero_point, float f, int32_t *q);

int quantizeInt8(float scale, int32_t zero_point, float f, int8_t *q);

int calculateActivationRangeQuantized(ActivationFunctionType activation,
    TensorType type,
    float scale,
    int32_t zero_point,
    int32_t *act_min,
    int32_t *act_max);

void quantizeMultiplier(int32_t *quantized_multiplier,
    int *shift,
    float input_scale,
    float filter_scale,
    float output_scale);

#endif
