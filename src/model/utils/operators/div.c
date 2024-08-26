#include "div.h"
#include <string.h>
#include "utils.h"
#include "printf.h"

inline int SubscriptToIndex(const DivNdArrayDesc desc, int indexes[5])
{
    return indexes[0] * desc.strides[0] + indexes[1] * desc.strides[1] +
           indexes[2] * desc.strides[2] + indexes[3] * desc.strides[3] +
           indexes[4] * desc.strides[4];
}

void calc(const DivParams *params, const int indexes[5],
          const DivNdArrayDesc desc1, const DivNdArrayDesc desc2,
          const DivNdArrayDesc output_desc)
{
    params->output_data[SubscriptToIndex(output_desc, indexes)] =
        ActivationFunctionWithMinMax(
            params->input1_data[SubscriptToIndex(desc1, indexes)] /
                params->input2_data[SubscriptToIndex(desc2, indexes)],
            params->output_activation_min, params->output_activation_max);
}

inline void NDOpsHelper(const DivParams *params, const DivNdArrayDesc *input1,
                        const DivNdArrayDesc *input2, const DivNdArrayDesc *output)
{
    int indexes[5] = {0};
    for (indexes[0] = 0; indexes[0] < output->extents[0]; ++indexes[0])
    {
        for (indexes[1] = 0; indexes[1] < output->extents[1]; ++indexes[1])
        {
            for (indexes[2] = 0; indexes[2] < output->extents[2]; ++indexes[2])
            {
                for (indexes[3] = 0; indexes[3] < output->extents[3]; ++indexes[3])
                {
                    for (indexes[4] = 0; indexes[4] < output->extents[4]; ++indexes[4])
                    {
                        calc(params, indexes, *input1, *input2, *output);
                    }
                }
            }
        }
    }
}

__attribute__((noinline)) void CopyDimsToDesc5(const int32_t *input_shape, DivNdArrayDesc *desc_out)
{

    int desc_stride = 1;
    for (int i = 5 - 1; i >= 0; --i)
    {
        desc_out->extents[i] = input_shape[i];
        desc_out->strides[i] = desc_stride;
        desc_stride *= input_shape[i];
    }
}

inline void DivNdArrayDescsForElementwiseBroadcast(
    const int32_t *input0_shape, int32_t input0_shape_size,
    const int32_t *input1_shape, int32_t input1_shape_size,
    DivNdArrayDesc *desc0_out, DivNdArrayDesc *desc1_out)
{
    int32_t extended_input0_shape[5];
    int32_t extended_input1_shape[5];

    ExtendShape(input0_shape, input0_shape_size, extended_input0_shape, 5);
    ExtendShape(input1_shape, input1_shape_size, extended_input1_shape, 5);

    // Copy dims to desc, calculating strides.
    CopyDimsToDesc5(extended_input0_shape, desc0_out);
    CopyDimsToDesc5(extended_input1_shape, desc1_out);

    // Walk over each dimension. If the extents are equal do nothing.
    // Otherwise, set the desc with extent 1 to have extent equal to the other and
    // stride 0.
    for (int i = 0; i < 5; ++i)
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

inline int32_t binary_func(const DivParams *params, const int32_t input1_val, const int32_t input2_val)
{
    return ActivationFunctionWithMinMax(
        input1_val / input2_val, params->output_activation_min,
        params->output_activation_max);
}

void Div(const DivParams *params)
{
    DivNdArrayDesc desc1;
    DivNdArrayDesc desc2;
    DivNdArrayDesc output_desc;

    DivNdArrayDescsForElementwiseBroadcast(
        params->input1_shape, params->input1_shape_size,
        params->input2_shape, params->input2_shape_size,
        &desc1, &desc2);

    int32_t extended_output_shape[5];
    ExtendShape(params->output_shape, params->output_shape_size, extended_output_shape, 5);
    CopyDimsToDesc5(extended_output_shape, &output_desc);

    NDOpsHelper(params, &desc1, &desc2, &output_desc);
}