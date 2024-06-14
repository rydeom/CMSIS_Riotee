#ifndef MUL_H
#define MUL_H

#include <stdint.h>
#include "utils.h"

typedef struct MulParams
{
    const int32_t *input1_data;
    const int32_t *input1_shape;
    int32_t input1_shape_size;
    const int32_t *input2_data;
    const int32_t *input2_shape;
    int32_t input2_shape_size;
    int32_t *output_data;
    int32_t *output_shape;
    int32_t output_shape_size;

    int32_t output_activation_min;
    int32_t output_activation_max;
    int32_t flat_size;
} MulParams;

typedef struct NdArrayDesc
{
    // The "extent" of each dimension. Indices along dimension d must be in the
    // half-open interval [0, extents[d]).
    int extents[6];

    // The number of *elements* (not bytes) between consecutive indices of each
    // dimension.
    int strides[6];
} NdArrayDesc;

inline void Mul(const MulParams *params);

#endif // MUL_H