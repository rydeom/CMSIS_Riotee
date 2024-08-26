#include "minimum_maximum.h"
#include <stdint.h>
#include "printf.h"

int32_t min(int32_t a, int32_t b)
{
    return a < b ? a : b;
}

int32_t max(int32_t a, int32_t b)
{
    return a > b ? a : b;
}

void calcMin(const MinimumParams *params, const int indexes[5],
             const MinMaxNdArrayDesc desc1, const MinMaxNdArrayDesc desc2,
             const MinMaxNdArrayDesc output_desc)
{
    params->output_data[SubscriptToIndex(output_desc, indexes)] = min(
        params->input1_data[SubscriptToIndex(desc1, indexes)],
        params->input2_data[SubscriptToIndex(desc2, indexes)]);
}

inline int SubscriptToIndex(const MinMaxNdArrayDesc desc, int indexes[5])
{
    return indexes[0] * desc.strides[0] + indexes[1] * desc.strides[1] +
           indexes[2] * desc.strides[2] + indexes[3] * desc.strides[3] +
           indexes[4] * desc.strides[4];
}

inline void NDOpsHelperMin(const MinimumParams *params, const MinMaxNdArrayDesc *input1,
                           const MinMaxNdArrayDesc *input2, const MinMaxNdArrayDesc *output)
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
                        calcMin(params, indexes, *input1, *input2, *output);
                    }
                }
            }
        }
    }
}

void calcMax(const MaximumParams *params, const int indexes[5],
             const MinMaxNdArrayDesc desc1, const MinMaxNdArrayDesc desc2,
             const MinMaxNdArrayDesc output_desc)
{
    params->output_data[SubscriptToIndex(output_desc, indexes)] = max(
        params->input1_data[SubscriptToIndex(desc1, indexes)],
        params->input2_data[SubscriptToIndex(desc2, indexes)]);
}

inline void NDOpsHelperMax(const MaximumParams *params, const MinMaxNdArrayDesc *input1,
                           const MinMaxNdArrayDesc *input2, const MinMaxNdArrayDesc *output)
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
                        calcMax(params, indexes, *input1, *input2, *output);
                    }
                }
            }
        }
    }
}

inline void MinMaxNdArrayDescsForElementwiseBroadcast(
    const int32_t *input0_shape, int32_t input0_shape_size,
    const int32_t *input1_shape, int32_t input1_shape_size,
    MinMaxNdArrayDesc *desc0_out, MinMaxNdArrayDesc *desc1_out)
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

void Minimum(const MinimumParams *params)
{
    MinMaxNdArrayDesc desc1;
    MinMaxNdArrayDesc desc2;
    MinMaxNdArrayDesc output_desc;
    MinMaxNdArrayDescsForElementwiseBroadcast(
        params->input1_shape, params->input1_shape_size,
        params->input2_shape, params->input2_shape_size,
        &desc1, &desc2);

    int32_t extended_output_shape[5];
    ExtendShape(params->output_shape, params->output_shape_size, extended_output_shape, 5);
    CopyDimsToDesc5(extended_output_shape, &output_desc);

    NDOpsHelperMin(params, &desc1, &desc2, &output_desc);
}

void Maximum(const MaximumParams *params)
{
    MinMaxNdArrayDesc desc1;
    MinMaxNdArrayDesc desc2;
    MinMaxNdArrayDesc output_desc;
    MinMaxNdArrayDescsForElementwiseBroadcast(
        params->input1_shape, params->input1_shape_size,
        params->input2_shape, params->input2_shape_size,
        &desc1, &desc2);

    int32_t extended_output_shape[5];
    ExtendShape(params->output_shape, params->output_shape_size, extended_output_shape, 5);
    CopyDimsToDesc5(extended_output_shape, &output_desc);

    NDOpsHelperMax(params, &desc1, &desc2, &output_desc);
}
