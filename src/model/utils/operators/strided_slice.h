#ifndef STRIDED_SLICE_H
#define STRIDED_SLICE_H

#include <stdint.h>
#include <stdbool.h>

typedef struct StridedSliceParams
{
    int32_t *input;
    int32_t input_shape_size;
    int32_t *input_shape;
    int32_t *output;
    int32_t output_size;

    int8_t start_indices_count;
    int32_t start_indices[5];
    int8_t stop_indices_count;
    int32_t stop_indices[5];
    int8_t strides_count;
    int32_t strides[5];

    int16_t begin_mask;
    int16_t ellipsis_mask;
    int16_t end_mask;
    int16_t new_axis_mask;
    int16_t shrink_axis_mask;
    uint8_t offset;
} StridedSliceParams;

inline void StridedSlice(StridedSliceParams *params);

#endif // STRIDED_SLICE_H