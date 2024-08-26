#include "add.h"
#include "printf.h"
#include "utils.h"
#include <stdbool.h>
#include <string.h>

void AddBroadcast(const int32_t *input_data,
                  const int32_t *broadcast_data,
                  int32_t *output_data, size_t size,
                  int32_t activation_min,
                  int32_t activation_max)
{
    size_t c = 0;
    for (; c < size; ++c)
    {
        output_data[c] = ActivationFunctionWithMinMax(
            input_data[c] + broadcast_data[0], activation_min, activation_max);
    }
}

void AddElementwise(const int32_t *input1_data,
                    const int32_t *input2_data,
                    int32_t *output_data, size_t size,
                    int32_t activation_min,
                    int32_t activation_max)
{
    size_t c = 0;
    for (; c < size; ++c)
    {
        output_data[c] = ActivationFunctionWithMinMax(
            input1_data[c] + input2_data[c], activation_min, activation_max);
    }
}

void BroadcastAddRecursiveDimensions(
    int dimension, size_t *input1_offset_p,
    size_t *input2_offset_p, size_t *output_offset,
    size_t *compressed_input1_stride, size_t *compressed_input2_stride,
    size_t *compressed_output_shape, int32_t activation_min,
    int32_t activation_max, const int32_t *input1_data,
    const int32_t *input2_data, int32_t *output_data)
{
    if (dimension > 0)
    {
        for (size_t c = 0; c < compressed_output_shape[dimension]; ++c)
        {
            size_t input1_offset_c = *input1_offset_p;
            size_t input2_offset_c = *input2_offset_p;
            BroadcastAddRecursiveDimensions(
                dimension - 1, &input1_offset_c, &input2_offset_c,
                output_offset, compressed_input1_stride, compressed_input2_stride,
                compressed_output_shape, activation_min, activation_max,
                input1_data, input2_data, output_data);
            *input1_offset_p += compressed_input1_stride[dimension];
            *input2_offset_p += compressed_input2_stride[dimension];
        }
    }
    else
    {
        bool input1_is_broadcast = compressed_input1_stride[dimension] == 0;
        bool input2_is_broadcast = compressed_input2_stride[dimension] == 0;
        const int32_t *input1_data_ptr = input1_data + *input1_offset_p;
        const int32_t *input2_data_ptr = input2_data + *input2_offset_p;
        int32_t *output_data_ptr = output_data + *output_offset;
        if (input1_is_broadcast)
        {
            // input1 is broadcast.
            AddBroadcast(input2_data_ptr, input1_data_ptr, output_data_ptr,
                         compressed_output_shape[dimension], activation_min,
                         activation_max);
            *input2_offset_p += compressed_output_shape[dimension];
        }
        else if (input2_is_broadcast)
        {
            // input2 is broadcast.
            AddBroadcast(input1_data_ptr, input2_data_ptr, output_data_ptr,
                         compressed_output_shape[dimension], activation_min,
                         activation_max);
            *input1_offset_p += compressed_output_shape[dimension];
        }
        else
        {
            // Add element-wise.
            AddElementwise(input1_data_ptr, input2_data_ptr, output_data_ptr,
                           compressed_output_shape[dimension], activation_min,
                           activation_max);
            *input1_offset_p += compressed_output_shape[dimension];
            *input2_offset_p += compressed_output_shape[dimension];
        }
        *output_offset += compressed_output_shape[dimension];
    }
}

bool ReduceDimensionsForBroadcast(const int32_t *input1_dims,
                                  const int32_t dims1_count,
                                  const int32_t *input2_dims,
                                  const int32_t dims2_count,
                                  size_t *compressed_input1_stride,
                                  size_t *compressed_input2_stride,
                                  size_t *compressed_output_shape,
                                  int16_t broadcast_dim)
{
    size_t num_compressed_dims = 0;
    size_t compressed_input1_shape[broadcast_dim];
    size_t compressed_input2_shape[broadcast_dim];
    for (size_t i = 0; i < broadcast_dim; i++)
    {
        compressed_input1_shape[i] = 1;
        compressed_input2_shape[i] = 1;
        compressed_output_shape[i] = 1;
    }
    bool broadcast_input1 = false;
    bool broadcast_input2 = false;
    bool first_nonunit = true;
    const size_t num_input1_dims = dims1_count;
    const size_t num_input2_dims = dims2_count;
    const size_t num_common_dims = (num_input1_dims < num_input2_dims) ? num_input1_dims : num_input2_dims;

    for (size_t i = 1; i <= num_common_dims; i++)
    {
        const size_t input1_dim = input1_dims[num_input1_dims - i];
        const size_t input2_dim = input2_dims[num_input2_dims - i];
        if (input1_dim == 0 || input2_dim == 0)
        {
            return false;
        }
        if (input1_dim == 1 && input2_dim == 1)
        {
            continue;
        }

        if (input1_dim == 1)
        {
            if (!broadcast_input1)
            {
                broadcast_input1 = true;
                broadcast_input2 = false;
                num_compressed_dims++;
            }
            compressed_input2_shape[num_compressed_dims - 1] *= input2_dim;
            compressed_output_shape[num_compressed_dims - 1] *= input2_dim;
        }
        else if (input2_dim == 1)
        {
            if (!broadcast_input2)
            {
                broadcast_input1 = false;
                broadcast_input2 = true;
                num_compressed_dims++;
            }
            compressed_input1_shape[num_compressed_dims - 1] *= input1_dim;
            compressed_output_shape[num_compressed_dims - 1] *= input1_dim;
        }
        else
        {
            if (broadcast_input1 || broadcast_input2 || first_nonunit)
            {
                broadcast_input1 = false;
                broadcast_input2 = false;
                num_compressed_dims++;
            }
            compressed_input1_shape[num_compressed_dims - 1] *= input1_dim;
            compressed_input2_shape[num_compressed_dims - 1] *= input1_dim;
            compressed_output_shape[num_compressed_dims - 1] *= input1_dim;
        }
        first_nonunit = false;
    }
    if (num_input1_dims > num_input2_dims)
    {
        if (!broadcast_input2)
        {
            num_compressed_dims++;
        }
        for (size_t i = 0; i < num_input1_dims - num_input2_dims; i++)
        {
            const size_t input1_dim = input1_dims[i];
            if (input1_dim == 0)
            {
                return false;
            }
            compressed_input1_shape[num_compressed_dims - 1] *= input1_dim;
            compressed_output_shape[num_compressed_dims - 1] *= input1_dim;
        }
    }
    else if (num_input2_dims > num_input1_dims)
    {
        if (!broadcast_input1)
        {
            num_compressed_dims++;
        }
        for (size_t i = 0; i < num_input2_dims - num_input1_dims; i++)
        {
            const size_t input2_dim = input2_dims[i];
            if (input2_dim == 0)
            {
                return false;
            }
            compressed_input2_shape[num_compressed_dims - 1] *= input2_dim;
            compressed_output_shape[num_compressed_dims - 1] *= input2_dim;
        }
    }
    num_compressed_dims = (num_compressed_dims > 1) ? num_compressed_dims : 1;

    int input1_stride = 1;
    int input2_stride = 1;
    for (int i = 0; i < broadcast_dim; ++i)
    {
        compressed_input1_stride[i] = input1_stride;
        input1_stride *= compressed_input1_shape[i];
        compressed_input2_stride[i] = input2_stride;
        input2_stride *= compressed_input2_shape[i];
    }
    for (int i = 0; i < broadcast_dim; ++i)
    {
        if (compressed_input1_shape[i] != compressed_input2_shape[i])
        {
            if (compressed_input1_shape[i] == 1)
            {
                compressed_input1_stride[i] = 0;
            }
            else
            {
                compressed_input2_stride[i] = 0;
            }
        }
    }
    return true;
}

void Add(const AddParams *params)
{
    int32_t kMaxBroadcastDim = 6;
    size_t compressed_input1_stride[kMaxBroadcastDim];
    size_t compressed_input2_stride[kMaxBroadcastDim];
    size_t compressed_output_shape[kMaxBroadcastDim];

    if (!ReduceDimensionsForBroadcast(
            params->input1_dims, params->input1_dims_count,
            params->input2_dims, params->input2_dims_count,
            compressed_input1_stride, compressed_input2_stride,
            compressed_output_shape, kMaxBroadcastDim))
    {
        return;
    }

    size_t input1_offset = 0;
    size_t input2_offset = 0;
    size_t output_offset = 0;

    BroadcastAddRecursiveDimensions(
        kMaxBroadcastDim - 1, &input1_offset, &input2_offset,
        &output_offset, compressed_input1_stride, compressed_input2_stride,
        compressed_output_shape, params->activation_min, params->activation_max,
        params->input1_data, params->input2_data, params->output_data);
}