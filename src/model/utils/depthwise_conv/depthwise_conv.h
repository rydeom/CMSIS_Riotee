#include <operator.h>
#ifndef DEPTHWISE_CONV_H
#define DEPTHWISE_CONV_H

typedef struct DepthwiseConvParams
{
    const int8_t *input_data;
    const int32_t *input_dims;
    const float *input_scale;
    const int32_t *input_zero_point;
    const int8_t *filter_data;
    const int32_t *filter_dims;
    const float *filter_scale;
    int32_t filter_scale_size;
    const int32_t *filter_zero_point;
    const int32_t *biases_data;
    const int32_t *biases_dims;
    const float *biases_scale;
    const int32_t *biases_zero_point;
    int8_t *output_data;
    const int32_t *output_dims;
    const float *output_scale;
    const int32_t *output_zero_point;

    Padding padding;
    ActivationFunctionType fused_activation_function;
    int32_t stride_w;
    int32_t stride_h;
    int32_t depth_multiplier;
    int32_t dilation_w_factor;
    int32_t dilation_h_factor;
} DepthwiseConvParams;

typedef struct
{
    int width;
    int height;
    int width_offset;
    int height_offset;
} PaddingValues;

void DepthwiseConv(const DepthwiseConvParams params);

#endif // DEPTHWISE_CONV_H