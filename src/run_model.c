#include "model.h"
#include "arm_nnfunctions.h"
#include "run_model.h"
#include <math.h>
#include "printf.h"
#include "utils.h"
#include "fully_connected_utils.h"
#include <riotee.h>

riotee_rc_t run_model(float input)
{
    const Model *model = ((Model *)model_data_raw);
    union LayersPuts first_layer = {0};
    union LayersPuts second_layer = {0};
    for (int i = 0; i < 16; i++)
    {
        printf("%x,", &first_layer.layer_2_input[i]);
    }
    printf("\r\n");
    for (int i = 0; i < 16; i++)
    {
        printf("%x,", &second_layer.layer_1_output[i]);
    }
    printf("\r\n");

    Tensor_0 *input_node = (Tensor_0 *)get_tensor(&model->tensors, 0);
    quantizeInt8(input_node->quantization.scale[0], input_node->quantization.zero_point[0], input, &first_layer.layer_1_input[0]);
    arm_cmsis_nn_status status = execute_layer_1(model, &first_layer, &second_layer);
    if (status != ARM_CMSIS_NN_SUCCESS)
    {
        printf("Layer 1 failed with status: %d\r\n", status);
        return RIOTEE_ERR_GENERIC;
    }
    for (int i = 0; i < 16; i++)
    {
        printf("%d,", second_layer.layer_1_output[i]);
    }
    printf("\r\n");
    status = execute_layer_2((Model *)model_data_raw, &second_layer, &first_layer);
    if (status != ARM_CMSIS_NN_SUCCESS)
    {
        printf("Layer 2 failed with status: %d\r\n", status);
        return RIOTEE_ERR_GENERIC;
    }
    for (int i = 0; i < 16; i++)
    {
        printf("%d,", first_layer.layer_2_output[i]);
    }
    printf("\r\n");
    // status = execute_layer_3((Model *)model_data_raw, &first_layer, &second_layer);
    // if (status != ARM_CMSIS_NN_SUCCESS)
    // {
    //     printf("Layer 3 failed with status: %d\r\n", status);
    //     return RIOTEE_ERR_GENERIC;
    // }
    // printf("Layer 3 done\r\n");
    // printf("Model: %x\r\n", model);
    // printf("Model tensors: %x\r\n", &model->tensors);
    // for (int i = 0; i < 1; i++)
    // {
    //     printf("%d,", second_layer.layer_3_output[i]);
    // }
    // printf("\r\n");

    // Tensor_9 *output_node = (Tensor_9 *)get_tensor(&((Model *)model_data_raw)->tensors, 9);
    // float y_pred = (second_layer.layer_3_output[0] - output_node->quantization.zero_point[0]) * output_node->quantization.scale[0];
    // printf("Prediction: %f\r\n", y_pred);
    // printf("Expected: %f\r\n", sinf(0.77f));

    return RIOTEE_SUCCESS;
}

arm_cmsis_nn_status execute_layer_1(Model *model,
                                    union LayersPuts *input_layer,
                                    union LayersPuts *output_layer)
{
    Operator_0 *op1 = (Operator_0 *)get_operator(&model->operators, 0);
    Tensor_0 *input_node = (Tensor_0 *)get_tensor(&model->tensors, 0);
    Tensor_6 *weights = (Tensor_6 *)get_tensor(&model->tensors, 6);
    Tensor_5 *bias = (Tensor_5 *)get_tensor(&model->tensors, 5);
    Tensor_7 *output = (Tensor_7 *)get_tensor(&model->tensors, 7);

    cmsis_nn_context ctx;
    ctx.buf = NULL;
    ctx.size = 0;

    cmsis_nn_fc_params fc_params;
    fill_fc_params(
        &fc_params,
        op1->builtin_options.fused_activation_function,
        input_node->type,
        input_node->quantization.zero_point[0],
        input_node->quantization.scale[0],
        output->quantization.zero_point[0]);

    cmsis_nn_per_tensor_quant_params quant_params;
    fill_quant_params(
        &quant_params,
        input_node->quantization.scale[0],
        weights->quantization.scale[0],
        output->quantization.scale[0]);

    cmsis_nn_dims input_dims;
    cmsis_nn_dims filter_dims;
    cmsis_nn_dims bias_dims;
    cmsis_nn_dims output_dims;
    fill_dims(
        &input_dims,
        &filter_dims,
        &bias_dims,
        &output_dims,
        &weights->shape[0],
        sizeof(weights->shape) / sizeof(weights->shape[0]),
        &output->shape[0],
        sizeof(output->shape) / sizeof(output->shape[0]));

    arm_cmsis_nn_status status = arm_fully_connected_s8(
        &ctx,
        &fc_params,
        &quant_params,
        &input_dims,
        input_layer->layer_1_input,
        &filter_dims,
        (int8_t *)weights->data,
        &bias_dims,
        (int32_t *)bias->data,
        &output_dims,
        output_layer->layer_1_output);

    return status;
}

arm_cmsis_nn_status execute_layer_2(Model *model,
                                    union LayersPuts *input_layer,
                                    union LayersPuts *output_layer)
{
    Operator_1 *op2 = (Operator_1 *)get_operator(&model->operators, 1);
    Tensor_7 *input_node = (Tensor_7 *)get_tensor(&model->tensors, 7);
    Tensor_4 *weights = (Tensor_4 *)get_tensor(&model->tensors, 4);
    Tensor_3 *bias = (Tensor_3 *)get_tensor(&model->tensors, 3);
    Tensor_8 *output = (Tensor_8 *)get_tensor(&model->tensors, 8);

    cmsis_nn_context ctx;
    ctx.buf = NULL;
    ctx.size = 0;

    cmsis_nn_fc_params fc_params;
    fill_fc_params(
        &fc_params,
        op2->builtin_options.fused_activation_function,
        input_node->type,
        input_node->quantization.zero_point[0],
        input_node->quantization.scale[0],
        output->quantization.zero_point[0]);

    cmsis_nn_per_tensor_quant_params quant_params;
    fill_quant_params(
        &quant_params,
        input_node->quantization.scale[0],
        weights->quantization.scale[0],
        output->quantization.scale[0]);

    cmsis_nn_dims input_dims;
    cmsis_nn_dims filter_dims;
    cmsis_nn_dims bias_dims;
    cmsis_nn_dims output_dims;
    fill_dims(
        &input_dims,
        &filter_dims,
        &bias_dims,
        &output_dims,
        &weights->shape[0],
        sizeof(weights->shape) / sizeof(weights->shape[0]),
        &output->shape[0],
        sizeof(output->shape) / sizeof(output->shape[0]));

    printf("Input dims: %d, %d, %d, %d\r\n", input_dims.n, input_dims.h, input_dims.c, input_dims.n);
    printf("Filter dims: %d, %d, %d, %d\r\n", filter_dims.n, filter_dims.h, filter_dims.c, filter_dims.n);
    printf("Bias dims: %d, %d, %d, %d\r\n", bias_dims.n, bias_dims.h, bias_dims.c, bias_dims.n);
    printf("Output dims: %d, %d, %d, %d\r\n", output_dims.n, output_dims.h, output_dims.c, output_dims.n);

    arm_cmsis_nn_status status = arm_fully_connected_s8(
        &ctx,
        &fc_params,
        &quant_params,
        &input_dims,
        input_layer->layer_2_input,
        &filter_dims,
        (int8_t *)weights->data,
        &bias_dims,
        (int32_t *)bias->data,
        &output_dims,
        output_layer->layer_2_output);

    return status;
}

arm_cmsis_nn_status execute_layer_3(Model *model,
                                    union LayersPuts *input_layer,
                                    union LayersPuts *output_layer)
{
    Operator_2 *op3 = (Operator_2 *)get_operator(&model->operators, 2);
    Tensor_8 *input_node = (Tensor_8 *)get_tensor(&model->tensors, 8);
    Tensor_2 *weights = (Tensor_2 *)get_tensor(&model->tensors, 2);
    Tensor_1 *bias = (Tensor_1 *)get_tensor(&model->tensors, 1);
    Tensor_9 *output = (Tensor_9 *)get_tensor(&model->tensors, 9);

    cmsis_nn_context ctx;
    ctx.buf = NULL;
    ctx.size = 0;

    cmsis_nn_fc_params fc_params;
    fill_fc_params(
        &fc_params,
        op3->builtin_options.fused_activation_function,
        input_node->type,
        input_node->quantization.zero_point[0],
        input_node->quantization.scale[0],
        output->quantization.zero_point[0]);

    cmsis_nn_per_tensor_quant_params quant_params;
    fill_quant_params(
        &quant_params,
        input_node->quantization.scale[0],
        weights->quantization.scale[0],
        output->quantization.scale[0]);

    cmsis_nn_dims input_dims;
    cmsis_nn_dims filter_dims;
    cmsis_nn_dims bias_dims;
    cmsis_nn_dims output_dims;
    fill_dims(
        &input_dims,
        &filter_dims,
        &bias_dims,
        &output_dims,
        &weights->shape[0],
        sizeof(weights->shape) / sizeof(weights->shape[0]),
        &output->shape[0],
        sizeof(output->shape) / sizeof(output->shape[0]));

    printf("Input dims: %d, %d, %d, %d\r\n", input_dims.n, input_dims.h, input_dims.c, input_dims.n);

    arm_cmsis_nn_status status = arm_fully_connected_s8(
        &ctx,
        &fc_params,
        &quant_params,
        &input_dims,
        input_layer->layer_3_input,
        &filter_dims,
        (int8_t *)weights->data,
        &bias_dims,
        (int32_t *)bias->data,
        &output_dims,
        output_layer->layer_3_output);

    return status;
}
