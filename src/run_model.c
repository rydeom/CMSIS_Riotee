#include "model.h"
#include "arm_nnfunctions.h"
#include "run_model.h"
#include "utils.h"
#include <math.h>

void run_model(float input)
{
    Model *model;
    model = ((Model *)model_data_raw);

    cmsis_nn_context ctx;
    ctx.buf = NULL;
    ctx.size = 0;

    cmsis_nn_fc_params fc_params;
    cmsis_nn_per_tensor_quant_params input_quant_params;
    cmsis_nn_dims input_dims;
    cmsis_nn_dims filter_dims;
    cmsis_nn_dims bias_dims;
    cmsis_nn_dims output_dims;

    Operator_0 *op1 = (Operator_0 *)get_operator(&model->operators, 0);

    Tensor_0 *input_node = (Tensor_0 *)get_tensor(&model->tensors, 0);
    Tensor_6 *weights = (Tensor_6 *)get_tensor(&model->tensors, 6);
    Tensor_7 *output = (Tensor_7 *)get_tensor(&model->tensors, 7);

    int8_t quant = quantize(input, input_node->quantization.scale[0], input_node->quantization.zero_point[0]);
    int8_t input_data[1] = {quant};

    fc_params.input_offset = -(*input_node->quantization.zero_point);
    fc_params.filter_offset = -(*weights->quantization.zero_point);
    fc_params.output_offset = (*output->quantization.zero_point);
    CalculateActivationRangeQuantized(
        (*op1).builtin_options.fused_activation_function,
        (*input_node).type,
        *input_node->quantization.scale,
        *input_node->quantization.zero_point,
        &fc_params.activation.min,
        &fc_params.activation.max);

    get_tensor_size(&model->tensors, &input_dims, op1->inputs[0]);
    get_tensor_size(&model->tensors, &filter_dims, op1->inputs[1]);
    get_tensor_size(&model->tensors, &bias_dims, op1->inputs[2]);
    get_tensor_size(&model->tensors, &output_dims, op1->outputs[0]);

    int8_t output_data[output_dims.n];

    arm_cmsis_nn_status status = arm_fully_connected_s8(
        &ctx,
        &fc_params,
        &input_quant_params,
        &input_dims,
        input_data,
        &filter_dims,
        (int8_t *)((Buffer_7 *)get_buffer(&model->buffers, 7))->data,
        &bias_dims,
        (int32_t *)((Buffer_6 *)get_buffer(&model->buffers, 6))->data,
        &output_dims,
        output_data);

    printf("Status: %d\n", status);
}

int8_t quantize(float input, float scale, int64_t zero_point)
{
    return (int8_t)round(input / scale) + zero_point;
}