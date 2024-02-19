#ifndef UTILS_H
#define UTILS_H

#include "tensor.h"
#include "operator.h"

int Quantize(
    float scale,
    int32_t zero_point,
    float f,
    int32_t *q);

int CalculateActivationRangeQuantizedImpl(
    ActivationFunctionType activation,
    int32_t qmin,
    int32_t qmax,
    int32_t *act_min,
    int32_t *act_max,
    float scale,
    int32_t zero_point);

int CalculateActivationRangeQuantized(
    ActivationFunctionType activation,
    TensorType type,
    float scale,
    int32_t zero_point,
    int32_t *act_min,
    int32_t *act_max);

#endif // UTILS_H