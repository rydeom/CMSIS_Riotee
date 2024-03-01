#include "model.h"
#include "arm_nnfunctions.h"
#include "run_model.h"
#include <math.h>
#include "printf.h"
#include "utils.h"
#include "fully_connected_utils.h"

union LayersPuts
{
    int8_t layer_1_input[1];
    int8_t layer_1_output[16];
    int8_t layer_2_input[16];
    int8_t layer_2_output[16];
    int8_t layer_3_input[16];
    int8_t layer_3_output[1];
};

void run_model(float input)
{
    Model *model;
    model = ((Model *)model_data_raw);

    union LayersPuts first_layer;
    union LayersPuts second_layer;

    cmsis_nn_context ctx;
    ctx.buf = NULL;
    ctx.size = 0;

    Operator_0 *op1 = (Operator_0 *)get_operator(&model->operators, 0);
    Operator_1 *op2 = (Operator_1 *)get_operator(&model->operators, 1);
    Operator_2 *op3 = (Operator_2 *)get_operator(&model->operators, 2);

    Tensor_0 *input_node = (Tensor_0 *)get_tensor(&model->tensors, 0);
    Tensor_6 *weights = (Tensor_6 *)get_tensor(&model->tensors, 6);
    Tensor_7 *output = (Tensor_7 *)get_tensor(&model->tensors, 7);

    printf("Input: %f\r\n", input);
    quantizeInt8(input_node->quantization.scale[0], input_node->quantization.zero_point[0], input, &first_layer.layer_1_input[0]);

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
    printf("Model tensors: %x\r\n", &model);
    printf("Model tensors: %x\r\n", &model->tensors);

    arm_cmsis_nn_status status = arm_fully_connected_s8(
        &ctx,
        &fc_params,
        &quant_params,
        &input_dims,
        first_layer.layer_1_input,
        &filter_dims,
        (int8_t *)((Buffer_7 *)get_buffer(&model->buffers, 7))->data,
        &bias_dims,
        (int32_t *)((Buffer_6 *)get_buffer(&model->buffers, 6))->data,
        &output_dims,
        second_layer.layer_1_output);

    printf("Status: %d\r\n", status);
    printf("Model tensors: %x\r\n", &model);
    printf("Model tensors: %x\r\n", &model->tensors);

    Tensor_7 *input2 = (Tensor_7 *)get_tensor(&model->tensors, 7);
    Tensor_4 *weights2 = (Tensor_4 *)get_tensor(&model->tensors, 4);
    Tensor_8 *output2 = (Tensor_8 *)get_tensor(&model->tensors, 8);

    fill_fc_params(
        &fc_params,
        op2->builtin_options.fused_activation_function,
        input2->type,
        input2->quantization.zero_point[0],
        input2->quantization.scale[0],
        output2->quantization.zero_point[0]);

    fill_quant_params(
        &quant_params,
        input2->quantization.scale[0],
        weights2->quantization.scale[0],
        output2->quantization.scale[0]);
    fill_dims(
        &input_dims,
        &filter_dims,
        &bias_dims,
        &output_dims,
        &weights2->shape[0],
        sizeof(weights2->shape) / sizeof(weights2->shape[0]),
        &output2->shape[0],
        sizeof(output2->shape) / sizeof(output2->shape[0]));
    printf("Model tensors: %x\r\n", &model);
    printf("Model tensors: %x\r\n", &model->tensors);

    status = arm_fully_connected_s8(
        &ctx,
        &fc_params,
        &quant_params,
        &input_dims,
        second_layer.layer_2_input,
        &filter_dims,
        (int8_t *)((Buffer_5 *)get_buffer(&model->buffers, 5))->data,
        &bias_dims,
        (int32_t *)((Buffer_4 *)get_buffer(&model->buffers, 4))->data,
        &output_dims,
        first_layer.layer_2_output);

    printf("Status2: %d\r\n", status);

    printf("Model tensors: %x\r\n", &model);
    printf("Model tensors: %x\r\n", &model->tensors);
    printf("Model tensors: %x\r\n", &model);

    Tensor_8 *input3 = (Tensor_8 *)get_tensor(&model->tensors, 8);
    Tensor_2 *weights3 = (Tensor_2 *)get_tensor(&model->tensors, 2);
    Tensor_9 *output3 = (Tensor_9 *)get_tensor(&model->tensors, 9);

    // printf("Status: %x\r\n", fill_fc_params);
    // printf("Activation: %d\r\n", op3->builtin_options.fused_activation_function);
    printf("Input type: %x\r\n", input3);
    printf("Input zero point: %d\r\n", input3->quantization.zero_point[0]);
    printf("Input scale: %f\r\n", input3->quantization.scale[0]);
    printf("Output zero point: %d\r\n", output3->quantization.zero_point[0]);
    fill_fc_params(
        &fc_params,
        op3->builtin_options.fused_activation_function,
        input3->type,
        input3->quantization.zero_point[0],
        input3->quantization.scale[0],
        output3->quantization.zero_point[0]);

    fill_quant_params(
        &quant_params,
        input3->quantization.scale[0],
        weights3->quantization.scale[0],
        output3->quantization.scale[0]);

    fill_dims(
        &input_dims,
        &filter_dims,
        &bias_dims,
        &output_dims,
        weights3->shape,
        sizeof(weights3->shape) / sizeof(weights3->shape[0]),
        output3->shape,
        sizeof(output3->shape) / sizeof(output3->shape[0]));

    status = arm_fully_connected_s8(
        &ctx,
        &fc_params,
        &quant_params,
        &input_dims,
        first_layer.layer_3_input,
        &filter_dims,
        (int8_t *)((Buffer_3 *)get_buffer(&model->buffers, 3))->data,
        &bias_dims,
        (int32_t *)((Buffer_2 *)get_buffer(&model->buffers, 2))->data,
        &output_dims,
        second_layer.layer_3_output);

    printf("Status3: %d\r\n", status);
    for (int i = 0; i < output_dims.c; i++)
    {
        printf("%d, ", second_layer.layer_3_output[i]);
    }
    printf("\r\n");

    float y_pred = (second_layer.layer_3_output[0] - output3->quantization.zero_point[0]) * output3->quantization.scale[0];
    printf("Prediction: %f\r\n", y_pred);
    printf("Expected: %f\r\n", sinf(0.77f));
}
