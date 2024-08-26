#include "depthwise_conv.h"
#include <arm_nn_types.h>
#include <arm_nnfunctions.h>
#include <stdbool.h>
#include "utils.h"
#include "printf.h"
#include "math.h"

inline int ComputeOutSize(Padding padding, int image_size,
                          int filter_size, int stride, int dilation_rate)
{
    int effective_filter_size = (filter_size - 1) * dilation_rate + 1;

    if (stride == 0)
        return 0;

    switch (padding)
    {
    case PADDING_SAME:
        return (image_size + stride - 1) / stride;
    case PADDING_VALID:
        return (image_size + stride - effective_filter_size) / stride;
    default:
        return 0;
    }
}

inline int ComputePaddingWithOffset(int stride, int dilation_rate, int in_size,
                                    int filter_size, int out_size,
                                    int *offset)
{
    int effective_filter_size = (filter_size - 1) * dilation_rate + 1;
    int total_padding =
        ((out_size - 1) * stride + effective_filter_size - in_size);
    total_padding = total_padding > 0 ? total_padding : 0;
    *offset = total_padding % 2;
    return total_padding / 2;
}

inline PaddingValues ComputePaddingHeightWidth(
    int stride_height, int stride_width, int dilation_rate_height,
    int dilation_rate_width, int in_height, int in_width, int filter_height,
    int filter_width, Padding padding, int *out_height, int *out_width)
{
    *out_width = ComputeOutSize(padding, in_width, filter_width, stride_width,
                                dilation_rate_width);
    *out_height = ComputeOutSize(padding, in_height, filter_height, stride_height,
                                 dilation_rate_height);

    PaddingValues padding_values;
    int offset = 0;
    padding_values.height =
        ComputePaddingWithOffset(stride_height, dilation_rate_height, in_height,
                                 filter_height, *out_height, &offset);
    padding_values.height_offset = offset;
    padding_values.width =
        ComputePaddingWithOffset(stride_width, dilation_rate_width, in_width,
                                 filter_width, *out_width, &offset);
    padding_values.width_offset = offset;
    return padding_values;
}

void QuantizeMultiplier(double double_multiplier, int32_t *quantized_multiplier,
                        int *shift)
{
    if (double_multiplier == 0.)
    {
        *quantized_multiplier = 0;
        *shift = 0;
        return;
    }

    const double q = frexp(double_multiplier, shift);
    int64_t q_fixed = (int64_t)(round(q * (1LL << 31)));
    if (q_fixed == (1LL << 31))
    {
        q_fixed /= 2;
        ++*shift;
    }

    if (*shift < -31)
    {
        *shift = 0;
        q_fixed = 0;
    }
    *quantized_multiplier = (int32_t)(q_fixed);
}

void GetQuantizedConvolutionMultipler(const float input_scale,
                                      const float filter_scale,
                                      const float biases_scale,
                                      float output_scale,
                                      bool bias,
                                      double *multiplier)
{
    const double input_product_scale = (double)(input_scale) * (double)(filter_scale);
    // The following conditions must be guaranteed by the training pipeline.
    if (bias)
    {
        const double bias_scale = (double)(biases_scale);
        // Here we're making sure the input_product_scale & bias_scale are about the
        // same. Since we have:
        // (output - output_zp) * output_scale =
        // input_product_scale * input_product + bias * bias_scale ---- (0)
        //
        // (0) equals:
        // (input_product + bias) * input_product_scale ----- (1)
        //           +
        // bias * (bias_scale - input_product_scale)   ------ (2)
        //
        // For the real kernel computation, we're doing (1), so we really need to
        // make sure (2) has minimum impact on the output, so:
        // bias * (bias_scale - input_product_scale) / output_scale should be
        // a small number for an integer.
        // Since normally bias should be within a small range.
        // We should expect (bias_scale - input_product_scale) / output_scale to
        // be a small number like 0.02.
        const double scale_diff = fabs(input_product_scale - bias_scale);
        const double output_scale = (double)(output_scale);
    }
    GetQuantizedConvolutionMultipler1(input_scale, filter_scale, output_scale, multiplier);
}

void GetQuantizedConvolutionMultipler1(const float input_scale,
                                       const float filter_scale,
                                       float output_scale,
                                       double *multiplier)
{
    const double input_product_scale = (double)(input_scale * filter_scale);
    *multiplier = input_product_scale / (double)(output_scale);
}

void DepthwiseConv(const DepthwiseConvParams params)
{
    int input_width = params.input_dims[2];
    int input_height = params.input_dims[1];
    int filter_width = params.filter_dims[2];
    int filter_height = params.filter_dims[1];
    int output_width = params.output_dims[2];
    int output_height = params.output_dims[1];

    const int num_channels = params.input_dims[3];

    PaddingValues padding = ComputePaddingHeightWidth(
        params.stride_h, params.stride_w, params.dilation_h_factor,
        params.dilation_w_factor, input_height, input_width, filter_height, filter_width,
        params.padding, &output_height, &output_width);

    int output_channels = params.filter_dims[3];

    const bool is_per_channel = params.filter_scale_size > 1;
    // Populate multiplier and shift using affine quantization.
    const float input_scale = params.input_scale[0];
    const float output_scale = params.output_scale[0];
    const float *filter_scales = params.filter_scale;
    const int num_channels_out = params.filter_dims[3];
    int32_t per_channel_output_multiplier[num_channels_out];
    int32_t per_channel_output_shift[num_channels_out];
    for (int i = 0; i < num_channels_out; ++i)
    {
        // If per-tensor quantization parameter is specified, broadcast it along the
        // quantization dimension (channels_out).
        const float scale = is_per_channel ? filter_scales[i] : filter_scales[0];
        const double filter_scale = (double)(scale);
        const double effective_output_scale = (double)(input_scale)*filter_scale /
                                              (double)(output_scale);

        int32_t significand;
        int channel_shift;
        QuantizeMultiplier(effective_output_scale, &significand, &channel_shift);
        per_channel_output_multiplier[i] = significand;
        per_channel_output_shift[i] = channel_shift;
    }

    int32_t min_activation = 0;
    int32_t max_activation = 0;
    calculateActivationRangeQuantized(
        params.fused_activation_function, INT8, output_scale,
        params.output_scale[0], &min_activation, &max_activation);

    int32_t input_zero_point = params.input_zero_point[0];
    int32_t filter_zero_point = params.filter_zero_point[0];
    int32_t output_zero_point = params.output_zero_point[0];

    cmsis_nn_dw_conv_params dw_conv_params;
    dw_conv_params.padding.h = padding.height;
    dw_conv_params.padding.w = padding.width;
    dw_conv_params.stride.h = params.stride_h;
    dw_conv_params.stride.w = params.stride_w;
    dw_conv_params.dilation.h = params.dilation_h_factor;
    dw_conv_params.dilation.w = params.dilation_w_factor;
    dw_conv_params.ch_mult = params.depth_multiplier;
    dw_conv_params.input_offset = -input_zero_point;
    dw_conv_params.output_offset = output_zero_point;
    dw_conv_params.activation.min = min_activation;
    dw_conv_params.activation.max = max_activation;

    cmsis_nn_per_channel_quant_params quant_params;
    quant_params.multiplier = &per_channel_output_multiplier;
    quant_params.shift = per_channel_output_shift;

    const int batch_size = params.input_dims[0] < params.output_dims[0]
                               ? params.input_dims[0]
                               : params.output_dims[0];
    const int output_depth = params.filter_dims[3] < params.output_dims[3]
                                 ? params.filter_dims[3]
                                 : params.output_dims[3];

    cmsis_nn_dims input_dims;
    input_dims.n = batch_size;
    input_dims.h = params.input_dims[1];
    input_dims.w = params.input_dims[2];
    input_dims.c = params.input_dims[3];

    cmsis_nn_dims filter_dims;
    filter_dims.n = params.filter_dims[0];
    filter_dims.h = params.filter_dims[1];
    filter_dims.w = params.filter_dims[2];
    filter_dims.c = output_depth;

    cmsis_nn_dims bias_dims;
    bias_dims.n = 1;
    bias_dims.h = 1;
    bias_dims.w = 1;
    bias_dims.c = output_depth;

    cmsis_nn_dims output_dims;
    output_dims.n = batch_size;
    output_dims.h = params.output_dims[1];
    output_dims.w = params.output_dims[2];
    output_dims.c = output_depth;

    cmsis_nn_context ctx;
    ctx.buf = 0;
    ctx.size = 0;

    arm_depthwise_conv_wrapper_s8(
        &ctx, &dw_conv_params, &quant_params, params.input_dims,
        params.input_data, params.filter_dims, params.filter_data,
        params.biases_dims, params.biases_data, params.output_dims, params.output_data);
}