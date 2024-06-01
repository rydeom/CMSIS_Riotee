#include "fully_connected_utils.h"
#include <stdint.h>
#include "arm_nn_types.h"
#include "audio_preprocessor_operators.h"
#include "utils.h"

void fill_dims(cmsis_nn_dims *input_dims, cmsis_nn_dims *filter_dims, cmsis_nn_dims *bias_dims, cmsis_nn_dims *output_dims, int32_t *weights, int32_t weights_size, int32_t *output, int32_t output_size)
{
    int32_t batches = flatSizeSkipDim(weights_size, weights, 0);
    int32_t accum_depth = weights[weights_size - 1];
    int32_t output_depth = output[output_size - 1];

    input_dims->n = batches;
    input_dims->h = 1;
    input_dims->w = 1;
    input_dims->c = accum_depth;

    filter_dims->n = accum_depth;
    filter_dims->h = 1;
    filter_dims->w = 1;
    filter_dims->c = output_depth;

    bias_dims->n = 1;
    bias_dims->h = 1;
    bias_dims->w = 1;
    bias_dims->c = output_depth;

    output_dims->n = batches;
    output_dims->h = 1;
    output_dims->w = 1;
    output_dims->c = output_depth;
}

void fill_fc_params(cmsis_nn_fc_params *fc_params, ActivationFunctionType activation, TensorType input_type, int32_t input_zero_point, float input_scale, int32_t output_zero_point)
{
    fc_params->input_offset = -(input_zero_point);
    fc_params->filter_offset = 0;
    fc_params->output_offset = output_zero_point;
    calculateActivationRangeQuantized(activation, input_type, input_scale, input_zero_point, &fc_params->activation.min, &fc_params->activation.max);
}

void fill_quant_params(cmsis_nn_per_tensor_quant_params *quant_params, float input_scale, float weights_scale, float output_scale)
{
    quantizeMultiplier(&quant_params->multiplier, &quant_params->shift, input_scale, weights_scale, output_scale);
}

