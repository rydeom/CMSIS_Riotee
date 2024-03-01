#ifndef FULLY_CONNECTED_UTILS_H
#define FULLY_CONNECTED_UTILS_H
#include <stdint.h>
#include "arm_nn_types.h"
#include "operator.h"

void fill_dims(cmsis_nn_dims *input_dims, cmsis_nn_dims *filter_dims, cmsis_nn_dims *bias_dims, cmsis_nn_dims *output_dims, int32_t *weights, int32_t weights_size, int32_t *output, int32_t output_size);

void fill_fc_params(cmsis_nn_fc_params *fc_params, ActivationFunctionType activation, TensorType input_type, int32_t input_zero_point, float input_scale, int32_t output_zero_point);

void fill_quant_params(cmsis_nn_per_tensor_quant_params *quant_params, float input_scale, float weights_scale, float output_scale);

#endif
