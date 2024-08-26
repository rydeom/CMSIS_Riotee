#ifndef MINIMUM_MAXIMUM_H
#define MINIMUM_MAXIMUM_H

#include <stdint.h>

typedef struct MinimumParams
{
    const int32_t *input1_data;
    const int32_t *input1_shape;
    int32_t input1_shape_size;
    const int32_t *input2_data;
    const int32_t *input2_shape;
    int32_t input2_shape_size;
    int32_t *output_data;
    const int32_t *output_shape;
    int32_t output_shape_size;
    int32_t flat_size;
} MinimumParams;

typedef struct MaximumParams
{
    const int32_t *input1_data;
    const int32_t *input1_shape;
    int32_t input1_shape_size;
    const int32_t *input2_data;
    const int32_t *input2_shape;
    int32_t input2_shape_size;
    int32_t *output_data;
    const int32_t *output_shape;
    int32_t output_shape_size;
    int32_t flat_size;
} MaximumParams;

typedef struct MinMaxNdArrayDesc
{
    // The "extent" of each dimension. Indices along dimension d must be in the
    // half-open interval [0, extents[d]).
    int extents[5];

    // The number of *elements* (not bytes) between consecutive indices of each
    // dimension.
    int strides[5];
} MinMaxNdArrayDesc;

inline void Minimum(const MinimumParams *params);

inline void Maximum(const MaximumParams *params);

#endif // MINIMUM_MAXIMUM_H