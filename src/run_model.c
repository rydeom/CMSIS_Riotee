#include "arm_nnfunctions.h"
#include "run_model.h"
#include <math.h>
#include "printf.h"
#include <riotee.h>
#include "audio_preprocessor_model.h"
#include "signal_window.h"
#include "micro_speech_model.h"
#include "signal_fft_auto_scale.h"
#include "signal_rfft.h"
#include "signal_energy.h"
#include "signal_filter_bank.h"
#include "signal_bank_square_root.h"
#include "signal_filter_bank_spectral_subtraction.h"
#include "signal_pcan.h"
#include "signal_filter_bank_log.h"
#include "utils.h"
#include "layer_data.h"
#include "cast.h"
#include "strided_slice.h"
#include "concatenation.h"
#include "mul.h"

#define BYTE_TO_BINARY_PATTERN "%c%c%c%c%c%c%c%c"
#define BYTE_TO_BINARY(byte)         \
    ((byte) & 0x80 ? '1' : '0'),     \
        ((byte) & 0x40 ? '1' : '0'), \
        ((byte) & 0x20 ? '1' : '0'), \
        ((byte) & 0x10 ? '1' : '0'), \
        ((byte) & 0x08 ? '1' : '0'), \
        ((byte) & 0x04 ? '1' : '0'), \
        ((byte) & 0x02 ? '1' : '0'), \
        ((byte) & 0x01 ? '1' : '0')

const AUDIO_PREPROCESSOR_model *audio_preprocessor_model = ((AUDIO_PREPROCESSOR_model *)audio_preprocessor_model_data_raw);
const MICRO_SPEECH_model *mirco_speech_model = ((MICRO_SPEECH_model *)micro_speech_model_data_raw);

riotee_rc_t run_model(const int16_t *audio_data, const size_t audio_data_size)
{
    union LayersPuts first_layer = {0};
    union LayersPuts second_layer = {0};
    printf("First layer start\n");

    for (int i = 0; i < 480; i++)
    {
        first_layer.layer_0_input[i] = audio_data[i];
    }
    run_frame(&first_layer, &second_layer);

    printf("First layer done\n");
    return RIOTEE_SUCCESS;
}

void run_frame(union LayersPuts *input_layer, union LayersPuts *output_layer)
{
    AUDIO_PREPROCESSOR_Operator_0 *op0 = (AUDIO_PREPROCESSOR_Operator_0 *)AUDIO_PREPROCESSOR_get_operator(&audio_preprocessor_model->operators, 0);
    AUDIO_PREPROCESSOR_Tensor_1 *tensor1 = (AUDIO_PREPROCESSOR_Tensor_1 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 1);
    SignalWindowParams params = {
        .input = input_layer->layer_0_input,
        .input_size = sizeof(input_layer->layer_0_input) / sizeof(input_layer->layer_0_input[0]),
        .weights = tensor1->data,
        .weight_size = sizeof(tensor1->data) / (sizeof(tensor1->data[0]) * 2),
        .shift = op0->builtin_options.shift,
        .output = output_layer->layer_0_output};

    signal_apply_window(&params);
    printf("Signal window done\n");
    AUDIO_PREPROCESSOR_Operator_2 *op2 = (AUDIO_PREPROCESSOR_Operator_2 *)AUDIO_PREPROCESSOR_get_operator(&audio_preprocessor_model->operators, 2);
    AUDIO_PREPROCESSOR_Tensor_15 *tensor15 = (AUDIO_PREPROCESSOR_Tensor_15 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 15);

    SignalFFTAutoScaleParams fft_params = {
        .input = output_layer->layer_0_output,
        .size = sizeof(output_layer->layer_0_output) / sizeof(output_layer->layer_0_output[0]),
        .output = output_layer->layer_1_input};
    int scale_bits = FftAutoScale(&fft_params);
    printf("FFT done\n");

    AUDIO_PREPROCESSOR_Tensor_21 *tensor21 = (AUDIO_PREPROCESSOR_Tensor_21 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 21);
    AUDIO_PREPROCESSOR_Tensor_23 *tensor23 = (AUDIO_PREPROCESSOR_Tensor_23 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 23);

    int32_t input_length = tensor21->shape[0];
    int32_t input_size = flatSize(sizeof(tensor21->shape) / sizeof(tensor21->shape[0]), tensor21->shape);
    int32_t output_length = tensor23->shape[(sizeof(tensor23->shape) / sizeof(tensor23->shape[0]) - 1)] / 2;
    int16_t fft_length = 512;
    int16_t state_size = 5396;

    SignalRfftParams rfft_params = {
        .input = input_layer->layer_3_output,
        .input_length = input_length,
        .input_size = input_size,
        .output = output_layer->layer_4_input,
        .output_length = output_length,
        .fft_length = fft_length,
        .state_size = state_size};

    RfftInt16(&rfft_params);
    printf("RFFT done\n");

    AUDIO_PREPROCESSOR_Operator_4 *op4 = (AUDIO_PREPROCESSOR_Operator_4 *)AUDIO_PREPROCESSOR_get_operator(&audio_preprocessor_model->operators, 4);

    SignalEnergyParams energy_params = {
        .input = output_layer->layer_4_input,
        .output = output_layer->layer_4_output,
        .start_index = op4->builtin_options.start_index,
        .end_index = op4->builtin_options.end_index};

    apply_energy(&energy_params);
    printf("Energy done\n");

    copyCastUint32ToInt32(
        output_layer->layer_5_input,
        output_layer->layer_5_output,
        sizeof(output_layer->layer_5_input) / sizeof(output_layer->layer_5_input[0]));
    printf("Copy done\n");

    AUDIO_PREPROCESSOR_Operator_6 *op6 = (AUDIO_PREPROCESSOR_Operator_6 *)AUDIO_PREPROCESSOR_get_operator(&audio_preprocessor_model->operators, 6);
    AUDIO_PREPROCESSOR_Tensor_7 *tensor7 = (AUDIO_PREPROCESSOR_Tensor_7 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 7);
    AUDIO_PREPROCESSOR_Tensor_6 *tensor6 = (AUDIO_PREPROCESSOR_Tensor_6 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 6);
    AUDIO_PREPROCESSOR_Tensor_5 *tensor5 = (AUDIO_PREPROCESSOR_Tensor_5 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 5);
    int8_t dims = sizeof(op6->inputs) / sizeof(op6->inputs[0]);

    StridedSliceParams strided_slice_params;
    strided_slice_params.start_indices_count = dims;
    strided_slice_params.stop_indices_count = dims;
    strided_slice_params.strides_count = dims;
    for (int i = 0; i < dims; i++)
    {
        strided_slice_params.start_indices[i] = ((int32_t *)tensor7->data)[i];
        strided_slice_params.stop_indices[i] = ((int32_t *)tensor6->data)[i];
        strided_slice_params.strides[i] = ((int32_t *)tensor5->data)[i];
    }
    strided_slice_params.begin_mask = op6->builtin_options.begin_mask;
    strided_slice_params.ellipsis_mask = 0;
    strided_slice_params.end_mask = op6->builtin_options.end_mask;
    strided_slice_params.new_axis_mask = 0;
    strided_slice_params.shrink_axis_mask = op6->builtin_options.shrink_axis_mask;
    strided_slice_params.offset = op6->builtin_options.offset;

    StridedSlice(&strided_slice_params);
    printf("Strided slice done\n");

    AUDIO_PREPROCESSOR_Operator_7 *op7 = (AUDIO_PREPROCESSOR_Operator_7 *)AUDIO_PREPROCESSOR_get_operator(&audio_preprocessor_model->operators, 7);

    AUDIO_PREPROCESSOR_Tensor_2 *tensor2 = (AUDIO_PREPROCESSOR_Tensor_2 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 2);
    AUDIO_PREPROCESSOR_Tensor_3 *tensor3 = (AUDIO_PREPROCESSOR_Tensor_3 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 3);
    AUDIO_PREPROCESSOR_Tensor_26 *tensor26 = (AUDIO_PREPROCESSOR_Tensor_26 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 26);
    AUDIO_PREPROCESSOR_Tensor_27 *tensor27 = (AUDIO_PREPROCESSOR_Tensor_27 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 27);

    ConcatenationParams concatenation_params;
    concatenation_params.axis = CalculatePositiveAxis(
        op7->builtin_options.axis,
        ((AUDIO_PREPROCESSOR_Tensor_27 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 27))->shape[0]);
    concatenation_params.inputs_count = sizeof(op7->inputs) / sizeof(op7->inputs[0]);
    concatenation_params.input = output_layer->layer_6_output;
    concatenation_params.input_shapes = (int32_t *[]){
        ((AUDIO_PREPROCESSOR_Tensor_3 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 3))->shape,
        ((AUDIO_PREPROCESSOR_Tensor_26 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 26))->shape,
        ((AUDIO_PREPROCESSOR_Tensor_2 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 2))->shape,
    };
    concatenation_params.output = output_layer->layer_7_output;
    concatenation_params.output_shape = ((AUDIO_PREPROCESSOR_Tensor_27 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 27))->shape;
    concatenation_params.output_shape_size = sizeof(concatenation_params.output_shape) / sizeof(concatenation_params.output_shape[0]);

    RunConcatenation(&concatenation_params);

    printf("Concatenation done\n");

    copyCastInt32ToUint32(
        output_layer->layer_7_output,
        output_layer->layer_7_output,
        sizeof(output_layer->layer_7_output) / sizeof(output_layer->layer_7_output[0]));
    printf("Copy done\n");

    AUDIO_PREPROCESSOR_Operator_9 *op9 = (AUDIO_PREPROCESSOR_Operator_9 *)AUDIO_PREPROCESSOR_get_operator(&audio_preprocessor_model->operators, 9);
    AUDIO_PREPROCESSOR_Tensor_13 *tensor13 = (AUDIO_PREPROCESSOR_Tensor_13 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 13);
    AUDIO_PREPROCESSOR_Tensor_12 *tensor12 = (AUDIO_PREPROCESSOR_Tensor_12 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 12);
    AUDIO_PREPROCESSOR_Tensor_11 *tensor11 = (AUDIO_PREPROCESSOR_Tensor_11 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 11);
    AUDIO_PREPROCESSOR_Tensor_10 *tensor10 = (AUDIO_PREPROCESSOR_Tensor_10 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 10);
    AUDIO_PREPROCESSOR_Tensor_9 *tensor9 = (AUDIO_PREPROCESSOR_Tensor_9 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 9);
    AUDIO_PREPROCESSOR_Tensor_29 *tensor29 = (AUDIO_PREPROCESSOR_Tensor_29 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 29);

    SignalFilterBankParams signal_filter_bank_params;
    signal_filter_bank_params.config.num_channels = op9->builtin_options.num_channels;
    uint64_t work_area[signal_filter_bank_params.config.num_channels + 1];
    signal_filter_bank_params.work_area = work_area;
    signal_filter_bank_params.config.weights = tensor13->data;
    signal_filter_bank_params.config.unweights = tensor12->data;
    signal_filter_bank_params.config.channel_frequency_starts = tensor11->data;
    signal_filter_bank_params.config.channel_weight_starts = tensor10->data;
    signal_filter_bank_params.config.channel_widths = tensor9->data;

    FilterbankAccumulateChannels(
        &signal_filter_bank_params,
        output_layer->layer_7_output,
        output_layer->layer_9_output,
        tensor29->shape,
        sizeof(tensor29->shape) / sizeof(tensor29->shape[0]));

    printf("Filter bank done\n");

    SignalBankSquareRootParams signal_bank_square_root_params;
    signal_bank_square_root_params.input = output_layer->layer_9_output;
    signal_bank_square_root_params.scale_bits = scale_bits;
    signal_bank_square_root_params.output = output_layer->layer_10_output;
    signal_bank_square_root_params.num_channels = tensor29->shape[0];

    SignalBankSquareRoot(&signal_bank_square_root_params);
    printf("Bank square root done\n");

    AUDIO_PREPROCESSOR_Operator_11 *op11 = (AUDIO_PREPROCESSOR_Operator_11 *)AUDIO_PREPROCESSOR_get_operator(&audio_preprocessor_model->operators, 11);

    uint32_t noise_estimate[signal_bank_square_root_params.num_channels];

    SpectralSubtractionConfig spectral_subtraction_config = {
        .num_channels = op11->builtin_options.num_channels,
        .smoothing = op11->builtin_options.smoothing,
        .one_minus_smoothing = op11->builtin_options.one_minus_smoothing,
        .min_signal_remaining = op11->builtin_options.min_signal_remaining,
        .alternate_smoothing = op11->builtin_options.alternate_smoothing,
        .alternate_one_minus_smoothing = op11->builtin_options.alternate_one_minus_smoothing,
        .smoothing_bits = op11->builtin_options.smoothing_bits,
        .spectral_subtraction_bits = op11->builtin_options.spectral_subtraction_bits,
        .clamping = op11->builtin_options.clamping};

    SignalFilterBankSpectralSubtractionParams signal_filter_bank_spectral_subtraction_params;
    signal_filter_bank_spectral_subtraction_params.input = output_layer->layer_10_output;
    signal_filter_bank_spectral_subtraction_params.output = output_layer->layer_11_output;
    signal_filter_bank_spectral_subtraction_params.config = &spectral_subtraction_config;
    signal_filter_bank_spectral_subtraction_params.noise_estimate = noise_estimate;
    signal_filter_bank_spectral_subtraction_params.noise_estimate_size = sizeof(noise_estimate) / sizeof(noise_estimate[0]);

    SignalFilterBankSpectralSubtraction(&signal_filter_bank_spectral_subtraction_params);
    printf("Spectral subtraction done\n");

    AUDIO_PREPROCESSOR_Operator_12 *op12 = (AUDIO_PREPROCESSOR_Operator_12 *)AUDIO_PREPROCESSOR_get_operator(&audio_preprocessor_model->operators, 12);
    AUDIO_PREPROCESSOR_Tensor_8 *tensor8 = (AUDIO_PREPROCESSOR_Tensor_8 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 8);
    AUDIO_PREPROCESSOR_Tensor_33 *tensor33 = (AUDIO_PREPROCESSOR_Tensor_33 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 33);

    SignalPcanParams signal_pcan_params;
    signal_pcan_params.input = output_layer->layer_11_output;
    signal_pcan_params.output = output_layer->layer_12_output;
    signal_pcan_params.snr_shift = op12->builtin_options.snr_shift;
    signal_pcan_params.noise_estimate = noise_estimate;
    signal_pcan_params.noise_estimate_size = sizeof(noise_estimate) / sizeof(noise_estimate[0]);
    signal_pcan_params.gain_lut = tensor8->data;
    signal_pcan_params.gain_lut_size = sizeof(tensor8->data) / sizeof(tensor8->data[0]);
    signal_pcan_params.num_channels = tensor33->shape[0];

    SignalPcan(&signal_pcan_params);
    printf("PCAN done\n");

    AUDIO_PREPROCESSOR_Operator_13 *op13 = (AUDIO_PREPROCESSOR_Operator_13 *)AUDIO_PREPROCESSOR_get_operator(&audio_preprocessor_model->operators, 13);
    AUDIO_PREPROCESSOR_Tensor_34 *tensor34 = (AUDIO_PREPROCESSOR_Tensor_34 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 34);

    SignalFilterBankLogParams signal_filter_bank_log_params;
    signal_filter_bank_log_params.input = output_layer->layer_12_output;
    signal_filter_bank_log_params.output = output_layer->layer_13_output;
    signal_filter_bank_log_params.input_correction_bits = op13->builtin_options.input_correction_bits;
    signal_filter_bank_log_params.output_scale = op13->builtin_options.output_scale;
    signal_filter_bank_log_params.num_channels = tensor34->shape[0];

    SignalFilterbankLog(&signal_filter_bank_log_params);
    printf("Filter bank log done\n");

    copyCastInt16ToInt32(
        output_layer->layer_13_output,
        output_layer->layer_13_output,
        sizeof(output_layer->layer_13_output) / sizeof(output_layer->layer_13_output[0]));
    printf("Copy done\n");

    AUDIO_PREPROCESSOR_Tensor_35 *tensor35 = (AUDIO_PREPROCESSOR_Tensor_35 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 35);
    AUDIO_PREPROCESSOR_Tensor_17 *tensor17 = (AUDIO_PREPROCESSOR_Tensor_17 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 17);

    MulParams mul_params;
    mul_params.input = output_layer->layer_13_output;
    mul_params.flat_size = flatSize(
        sizeof(tensor35->shape) / sizeof(tensor35->shape[0]),
        tensor35->shape);
    mul_params.input2 = tensor17->data;
    mul_params.output = output_layer->layer_14_output;
    CalculateActivationRange(
        NONE,
        &mul_params.output_activation_min,
        &mul_params.output_activation_max);

    Mul(&mul_params);
    printf("Mul done\n");
}

void print_bytes(void *ptr, int size)
{
    unsigned char *p = ptr;
    int i;
    for (i = 0; i < size / 4; i++)
    {
        for (int j = 0; j < 4; j++)
        {
            printf("%p " BYTE_TO_BINARY_PATTERN " ", &p[i * 4 + j], BYTE_TO_BINARY(p[i * 4 + j]));
        }
        printf("\n");
    }
    printf("\n");
}

/*
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
*/