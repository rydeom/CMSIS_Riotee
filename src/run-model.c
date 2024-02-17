#include "model.h"
#include "arm_nnfunctions.h"

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

    Tensor_0 *start = get_tensor_0(model, 0);
    int8_t quant = quantize(input, *start->quantization.scale, *start->quantization.zero_point);
    int8_t input_data[1] = {quant};

    Operator_0 *op1 = get_operator_0(model, 0);

    fc_params.input_offset = -(*start->quantization.zero_point);
    fc_params.filter_offset = -(*start->quantization.zero_point);
    fc_params.output_offset = 0;
    CalculateActivationRangeQuantized(
        (*op1).builtin_options.fused_activation_function,
        (*start).type,
        *start->quantization.scale,
        *start->quantization.zero_point,
        &fc_params.activation.min,
        &fc_params.activation.max);

    

    arm_cmsis_nn_status status = arm_fully_connected_s8(
        &ctx,
        &fc_params,
        &input_quant_params,
        &input_dims,
        &input_data,
        &filter_dims,
        &model->filter_data,
        &bias_dims,
        &model->bias_data,
        &output_dims,
        &model->output_data);
}

int8_t quantize(float input, float scale, int64_t zero_point)
{
    return (int8_t)round(input / scale) + zero_point;
}