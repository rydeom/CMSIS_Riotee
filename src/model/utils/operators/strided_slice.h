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

inline int Clamp(const int v, const int lo, const int hi)
{
    if (hi < v)
        return hi;
    if (v < lo)
        return lo;
    return v;
}

inline int32_t StridedSliceStartForAxis(const StridedSliceParams *params,
                                        const int32_t *input_shape,
                                        int32_t axis)
{
    const int32_t axis_size = input_shape[axis];
    int32_t start = params->start_indices[axis];
    const int32_t stride = params->strides[axis];
    const int32_t begin_mask = (params->begin_mask & 1 << axis);
    if (start < 0)
    {
        start += axis_size;
    }
    if (stride > 0)
    {
        start = Clamp(start, 0, axis_size);
    }
    else
    {
        start = Clamp(start, -1, axis_size - 1);
    }
    if (begin_mask)
    {
        if (stride > 0)
        {
            start = 0;
        }
        else
        {
            start = axis_size - 1;
        }
    }
    return start;
}

inline int32_t StridedSliceEndForAxis(const StridedSliceParams *params,
                                      const int32_t *input_shape, int axis,
                                      int start)
{
    const shrink_axis_mask = params->shrink_axis_mask;
    const bool shrink_axis = shrink_axis_mask & (1 << axis);
    const int axis_size = input_shape[axis];
    const bool offset = params->offset;
    if (shrink_axis)
    {
        if (start >= axis_size)
        {
            return start;
        }
        else
        {
            return start + 1;
        }
    }
    const *indices = params->stop_indices;
    int end = indices[axis];
    if (offset)
    {
        end += start;
    }
    const int32_t stride = params->strides[axis];
    const int32_t end_mask = (params->end_mask & 1 << axis);
    if (end < 0)
    {
        end += axis_size;
    }
    if (stride > 0)
    {
        end = Clamp(end, 0, axis_size);
    }
    else
    {
        end = Clamp(end, -1, axis_size - 1);
    }
    if (end_mask)
    {
        if (stride > 0)
        {
            end = axis_size;
        }
        else
        {
            end = -1;
        }
    }
    return end;
}

inline void StridedSlicePadIndices(StridedSliceParams *p, int dim_count)
{
    const int pad_count = dim_count - p->start_indices_count;

    // Pad indices at start, so move arrays by pad_count.
    for (int i = p->start_indices_count - 1; i >= 0; --i)
    {
        p->strides[i + pad_count] = p->strides[i];
        p->start_indices[i + pad_count] = p->start_indices[i];
        p->stop_indices[i + pad_count] = p->stop_indices[i];
    }
    for (int i = 0; i < pad_count; ++i)
    {
        p->start_indices[i] = 0;
        p->stop_indices[i] = 1;
        p->strides[i] = 1;
    }

    // Pad masks with 0s or 1s as required.
    p->shrink_axis_mask <<= pad_count;
    p->ellipsis_mask <<= pad_count;
    p->new_axis_mask <<= pad_count;
    p->begin_mask <<= pad_count;
    p->end_mask <<= pad_count;
    p->begin_mask |= (1 << pad_count) - 1;
    p->end_mask |= (1 << pad_count) - 1;

    p->start_indices_count = dim_count;
    p->stop_indices_count = dim_count;
    p->strides_count = dim_count;
}

inline bool lc(int end, int stride, int index)
{
    if (stride < 0)
    {
        return index > end;
    }
    else
    {
        return index < end;
    }
}

inline void StridedSlice(StridedSliceParams *params)
{
    StridedSlicePadIndices(params, 5);
    int32_t new_input_shape[5] = {0};
    for (int i = 0; i < params->input_shape_size; i++)
    {
        new_input_shape[i] = params->input_shape[i];
    }

    const int32_t start_0 = StridedSliceStartForAxis(params, new_input_shape, 0);
    const int32_t stop_0 = StridedSliceEndForAxis(params, new_input_shape, 0, start_0);
    const int32_t start_1 = StridedSliceStartForAxis(params, new_input_shape, 1);
    const int32_t stop_1 = StridedSliceEndForAxis(params, new_input_shape, 1, start_1);
    const int32_t start_2 = StridedSliceStartForAxis(params, new_input_shape, 2);
    const int32_t stop_2 = StridedSliceEndForAxis(params, new_input_shape, 2, start_2);
    const int32_t start_3 = StridedSliceStartForAxis(params, new_input_shape, 3);
    const int32_t stop_3 = StridedSliceEndForAxis(params, new_input_shape, 3, start_3);
    const int32_t start_4 = StridedSliceStartForAxis(params, new_input_shape, 4);
    const int32_t stop_4 = StridedSliceEndForAxis(params, new_input_shape, 4, start_4);

    const int *shape = (const int *)new_input_shape;
    const int *stride = (const int *)params->strides;
    const bool inner_stride_is_1 = params->strides[4] == 1;
    uint8_t *writer = params->output;

    for (int offset_0 = start_0; lc(stop_0, stride[0], offset_0);
         offset_0 += stride[0])
    {
        for (int offset_1 = start_1; lc(stop_1, stride[1], offset_1);
             offset_1 += stride[1])
        {
            for (int offset_2 = start_2; lc(stop_2, stride[2], offset_2);
                 offset_2 += stride[2])
            {
                for (int offset_3 = start_3; lc(stop_3, stride[3], offset_3);
                     offset_3 += stride[3])
                {
                    if (inner_stride_is_1)
                    {
                        const int len = stop_4 - start_4;
                        int index = start_4 + offset_3 * shape[4] +
                                    offset_2 * shape[3] * shape[4] +
                                    offset_1 * shape[2] * shape[3] * shape[4] +
                                    offset_0 * shape[1] * shape[2] * shape[3] * shape[4];
                        if (len > 0)
                        {
                            writeNData(params->input, index, writer, len);
                        }
                    }
                    else
                    {
                        for (int offset_4 = start_4; lc(stop_4, stride[4], offset_4);
                             offset_4 += stride[4])
                        {
                            int index = offset_4 + offset_3 * shape[4] +
                                        offset_2 * shape[3] * shape[4] +
                                        offset_1 * shape[2] * shape[3] * shape[4] +
                                        offset_0 * shape[1] * shape[2] * shape[3] * shape[4];
                            writeData(params->input, index, writer);
                        }
                    }
                }
            }
        }
    }
}

inline void writeData(int32_t *input, int32_t index, int32_t *output)
{
    *output++ = input[index];
}

inline void writeNData(int32_t *input, int32_t index, int32_t *output, int32_t n)
{
    memcpy(output, &input[index], sizeof(int32_t) * n);
    output += n;
}

#endif // STRIDED_SLICE_H