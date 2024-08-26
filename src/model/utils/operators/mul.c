#include "mul.h"
#include <string.h>
#include "utils.h"
#include "printf.h"

__attribute__((noinline)) void CopyDimsToDesc6(const int32_t *input_shape, NdArrayDesc *desc_out)
{
    int desc_stride = 1;
    for (int i = 6 - 1; i >= 0; --i)
    {
        desc_out->extents[i] = input_shape[i];
        desc_out->strides[i] = desc_stride;
        desc_stride *= input_shape[i];
    }
}

inline void NdArrayDescsForElementwiseBroadcast(
    const int32_t *input0_shape, int32_t input0_shape_size,
    const int32_t *input1_shape, int32_t input1_shape_size,
    NdArrayDesc *desc0_out, NdArrayDesc *desc1_out)
{
    int32_t extended_input0_shape[6];
    int32_t extended_input1_shape[6];
    ExtendShape(input0_shape, input0_shape_size, extended_input0_shape, 6);
    ExtendShape(input1_shape, input1_shape_size, extended_input1_shape, 6);

    // Copy dims to desc, calculating strides.
    CopyDimsToDesc6(extended_input0_shape, desc0_out);
    CopyDimsToDesc6(extended_input1_shape, desc1_out);

    // Walk over each dimension. If the extents are equal do nothing.
    // Otherwise, set the desc with extent 1 to have extent equal to the other and
    // stride 0.
    for (int i = 0; i < 6; ++i)
    {
        const int extent0 = extended_input0_shape[i];
        const int extent1 = extended_input1_shape[i];
        if (extent0 != extent1)
        {
            if (extent0 == 1)
            {
                desc0_out->strides[i] = 0;
                desc0_out->extents[i] = extent1;
            }
            else
            {
                desc1_out->strides[i] = 0;
                desc1_out->extents[i] = extent0;
            }
        }
    }
}

inline int32_t binary_func(const MulParams *params, const int32_t input1_val, const int32_t input2_val)
{
    return ActivationFunctionWithMinMax(
        input1_val * input2_val, params->output_activation_min,
        params->output_activation_max);
}

void BroadcastMulRecursiveDimensions(
    const MulParams *params, int dimension, const int32_t *input1_data,
    const int32_t *input2_data, int32_t *output_data, size_t *input1_offset_p,
    size_t *input2_offset_p, size_t *output_offset,
    const NdArrayDesc desc1,
    const NdArrayDesc desc2,
    const int32_t extended_output_shape_dims[6])
{
    if (dimension == 6 - 1)
    {
        for (int c = 0; c < extended_output_shape_dims[dimension]; ++c)
        {
            const int32_t input1_val = input1_data[*input1_offset_p];
            const int32_t input2_val = input2_data[*input2_offset_p];
            output_data[*output_offset] = binary_func(params, input1_val, input2_val);
            *input1_offset_p += desc1.strides[dimension];
            *input2_offset_p += desc2.strides[dimension];
            ++(*output_offset);
        }
    }
    else
    {
        for (int a = 0; a < extended_output_shape_dims[dimension]; ++a)
        {
            size_t input1_offset_c = *input1_offset_p;
            size_t input2_offset_c = *input2_offset_p;
            BroadcastMulRecursiveDimensions(
                params, dimension + 1, input1_data, input2_data, output_data,
                &input1_offset_c, &input2_offset_c, output_offset, desc1, desc2,
                extended_output_shape_dims);
            *input1_offset_p += desc1.strides[dimension];
            *input2_offset_p += desc2.strides[dimension];
        }
    }
}

void Mul(const MulParams *params)
{
    NdArrayDesc desc1;
    NdArrayDesc desc2;

    NdArrayDescsForElementwiseBroadcast(
        params->input1_shape, params->input1_shape_size,
        params->input2_shape, params->input2_shape_size,
        &desc1, &desc2);

    int32_t extended_output_shape[6];
    ExtendShape(params->output_shape, params->output_shape_size, extended_output_shape, 6);

    // Cache output shape dimensions.
    int32_t extended_output_shape_dims[6];
    memcpy(extended_output_shape_dims, extended_output_shape, sizeof(extended_output_shape_dims));

    size_t input1_offset = 0;
    size_t input2_offset = 0;
    size_t output_offset = 0;
    BroadcastMulRecursiveDimensions(
        params, 0, params->input1_data, params->input2_data, params->output_data, &input1_offset,
        &input2_offset, &output_offset, desc1, desc2, extended_output_shape_dims);
}