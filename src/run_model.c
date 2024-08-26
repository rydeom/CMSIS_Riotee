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
#include "add.h"
#include "div.h"
#include "minimum_maximum.h"
#include "depthwise_conv.h"
#include "fully_connected_utils.h"
#include "softmax.h"
#include "micro_model_settings.h"

const AUDIO_PREPROCESSOR_model *audio_preprocessor_model = ((AUDIO_PREPROCESSOR_model *)audio_preprocessor_model_data_raw);
const MICRO_SPEECH_model *mirco_speech_model = ((MICRO_SPEECH_model *)micro_speech_model_data_raw);

union LayersPuts first_layer = {0};
union LayersPuts second_layer = {0};
union MircoSpeechModelData model_data = {0};

uint8_t Classify(ClassificationResult *result, const int16_t *audio_data, const size_t audio_data_size)
{
    run_audio_preprocessor(audio_data, audio_data_size);
    run_model();

    return 0;
}

void run_audio_preprocessor(const int16_t *audio_data, const size_t audio_data_size)
{
    size_t remaining_samples = audio_data_size;
    size_t feature_index = 0;

    while (remaining_samples >= kAudioSampleDurationCount && feature_index < kFeatureCount)
    {
        memcpy(first_layer.layer_0_input, audio_data, kAudioSampleDurationCount * sizeof(int16_t));
        run_frame(&first_layer, &second_layer);
        memcpy(model_data.layer_data.layer_1.layer_1_input + (feature_index * kFeatureSize), second_layer.layer_21_output, kFeatureSize * sizeof(int8_t));

        feature_index++;
        audio_data += kAudioSampleStrideCount;
        remaining_samples -= kAudioSampleStrideCount;
    }
}

void run_model()
{
    run_depthwise_conv(&model_data.layer_data.layer_1, &model_data.layer_data.layer_2);
    run_fully_connected(&model_data.layer_data.layer_2, &model_data.layer_data.layer_1);
    run_softmax(&model_data.layer_data.layer_1, &model_data.layer_data.layer_2);

    for (int i = 0; i < 4; i++)
    {
        printf("%d: %d\n", i, model_data.layer_data.layer_2.layer_4_output[i]);
    }
}

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

void run_depthwise_conv(union MicroSpeechLayer *input_layer, union MicroSpeechLayer *output_layer)
{
    MICRO_SPEECH_Operator_1 *op1 = (MICRO_SPEECH_Operator_1 *)MICRO_SPEECH_get_operator(&mirco_speech_model->operators, 1);
    MICRO_SPEECH_Tensor_4 *tensor4 = (MICRO_SPEECH_Tensor_4 *)MICRO_SPEECH_get_tensor(&mirco_speech_model->tensors, 4);
    MICRO_SPEECH_Tensor_8 *tensor8 = (MICRO_SPEECH_Tensor_8 *)MICRO_SPEECH_get_tensor(&mirco_speech_model->tensors, 8);
    MICRO_SPEECH_Tensor_0 *tensor0 = (MICRO_SPEECH_Tensor_0 *)MICRO_SPEECH_get_tensor(&mirco_speech_model->tensors, 0);
    MICRO_SPEECH_Tensor_2 *tensor2 = (MICRO_SPEECH_Tensor_2 *)MICRO_SPEECH_get_tensor(&mirco_speech_model->tensors, 2);

    DepthwiseConvParams depthwise_conv_params;
    depthwise_conv_params.input_data = input_layer->layer_1_input;
    depthwise_conv_params.input_dims = tensor4->shape;
    depthwise_conv_params.input_scale = tensor4->quantization.scale;
    depthwise_conv_params.input_zero_point = tensor4->quantization.zero_point;

    depthwise_conv_params.filter_data = tensor8->data;
    depthwise_conv_params.filter_dims = tensor8->shape;
    depthwise_conv_params.filter_scale = tensor8->quantization.scale;
    depthwise_conv_params.filter_zero_point = tensor8->quantization.zero_point;

    depthwise_conv_params.biases_data = tensor0->data;
    depthwise_conv_params.biases_dims = tensor0->shape;
    depthwise_conv_params.biases_scale = tensor0->quantization.scale;
    depthwise_conv_params.biases_zero_point = tensor0->quantization.zero_point;

    depthwise_conv_params.output_data = output_layer->layer_2_output;
    depthwise_conv_params.output_dims = tensor2->shape;
    depthwise_conv_params.output_scale = tensor2->quantization.scale;
    depthwise_conv_params.output_zero_point = tensor2->quantization.zero_point;

    depthwise_conv_params.padding = op1->builtin_options.padding;
    depthwise_conv_params.stride_h = op1->builtin_options.stride_h;
    depthwise_conv_params.stride_w = op1->builtin_options.stride_w;
    depthwise_conv_params.dilation_h_factor = op1->builtin_options.dilation_h_factor;
    depthwise_conv_params.dilation_w_factor = op1->builtin_options.dilation_w_factor;
    depthwise_conv_params.depth_multiplier = op1->builtin_options.depth_multiplier;
    depthwise_conv_params.fused_activation_function = op1->builtin_options.fused_activation_function;

    DepthwiseConv(depthwise_conv_params);
}

void run_fully_connected(union MicroSpeechLayer *input_layer, union MicroSpeechLayer *output_layer)
{
    MICRO_SPEECH_Operator_2 *op2 = (MICRO_SPEECH_Operator_2 *)MICRO_SPEECH_get_operator(&mirco_speech_model->operators, 2);
    MICRO_SPEECH_Tensor_2 *input_node = (MICRO_SPEECH_Tensor_2 *)MICRO_SPEECH_get_tensor(&mirco_speech_model->tensors, 2);
    MICRO_SPEECH_Tensor_7 *weights = (MICRO_SPEECH_Tensor_7 *)MICRO_SPEECH_get_tensor(&mirco_speech_model->tensors, 7);
    MICRO_SPEECH_Tensor_1 *bias = (MICRO_SPEECH_Tensor_1 *)MICRO_SPEECH_get_tensor(&mirco_speech_model->tensors, 1);
    MICRO_SPEECH_Tensor_6 *output = (MICRO_SPEECH_Tensor_6 *)MICRO_SPEECH_get_tensor(&mirco_speech_model->tensors, 6);

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
    printf("Quant params: %d %d\n",
           quant_params.multiplier,
           quant_params.shift);

    cmsis_nn_dims input_dims;
    cmsis_nn_dims filter_dims;
    cmsis_nn_dims bias_dims;
    cmsis_nn_dims output_dims;
    fill_dims(
        &input_dims,
        &filter_dims,
        &bias_dims,
        &output_dims,
        weights->shape,
        sizeof(weights->shape) / sizeof(weights->shape[0]),
        output->shape,
        sizeof(output->shape) / sizeof(output->shape[0]));

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
}

void run_softmax(union MicroSpeechLayer *input_layer, union MicroSpeechLayer *output_layer)
{
    MICRO_SPEECH_Operator_3 *op3 = (MICRO_SPEECH_Operator_3 *)MICRO_SPEECH_get_operator(&mirco_speech_model->operators, 3);
    MICRO_SPEECH_Tensor_6 *tensor_6 = (MICRO_SPEECH_Tensor_6 *)MICRO_SPEECH_get_tensor(&mirco_speech_model->tensors, 6);
    MICRO_SPEECH_Tensor_9 *tensor_9 = (MICRO_SPEECH_Tensor_9 *)MICRO_SPEECH_get_tensor(&mirco_speech_model->tensors, 9);

    SoftmaxParams softmax_params;
    softmax_params.input = input_layer->layer_4_input;
    softmax_params.input_shape = tensor_6->shape;
    softmax_params.input_shape_size = sizeof(tensor_6->shape) / sizeof(tensor_6->shape[0]);
    softmax_params.input_scale = tensor_6->quantization.scale[0];
    softmax_params.output = output_layer->layer_4_output;
    softmax_params.output_shape = tensor_9->shape;
    softmax_params.beta = op3->builtin_options.beta;

    softmax(softmax_params);
}

void run_frame(union LayersPuts *input_layer, union LayersPuts *output_layer)
{
    run_signal_window(
        input_layer->layer_0_input,
        sizeof(input_layer->layer_0_input) / sizeof(input_layer->layer_0_input[0]),
        output_layer->layer_0_output);
    int scale_bits = run_signal_fft_auto_scale(
        output_layer->layer_2_output,
        sizeof(output_layer->layer_2_output) / sizeof(output_layer->layer_2_output[0]),
        input_layer->layer_2_output);
    run_signal_rfft(
        input_layer->layer_3_input,
        output_layer->layer_3_output);
    run_signal_energy(
        output_layer->layer_4_input,
        input_layer->layer_4_output);
    copyCastUint32ToInt32(
        input_layer->layer_5_input,
        output_layer->layer_5_output,
        sizeof(input_layer->layer_5_input) / sizeof(input_layer->layer_5_input[0]));
    run_strided_slice(
        output_layer->layer_6_input,
        input_layer->layer_6_output);
    run_connectation(
        input_layer->layer_7_input,
        output_layer->layer_7_output);
    copyCastInt32ToUint32(
        output_layer->layer_8_input,
        input_layer->layer_8_output,
        sizeof(output_layer->layer_8_input) / sizeof(output_layer->layer_8_input[0]));
    run_signal_filter_bank(
        input_layer->layer_9_input,
        output_layer->layer_9_output);
    run_signal_bank_square_root(
        output_layer->layer_10_input,
        scale_bits,
        input_layer->layer_10_output);
    AUDIO_PREPROCESSOR_Operator_11 *op11 = (AUDIO_PREPROCESSOR_Operator_11 *)AUDIO_PREPROCESSOR_get_operator(&audio_preprocessor_model->operators, 11);
    uint32_t noise_estimate[op11->builtin_options.num_channels];
    run_signal_filter_bank_spectral_subtraction(
        input_layer->layer_11_input,
        output_layer->layer_11_output,
        noise_estimate);
    run_signal_pcan(
        output_layer->layer_12_input,
        input_layer->layer_12_output,
        noise_estimate);
    run_signal_filter_bank_log(
        input_layer->layer_13_input,
        output_layer->layer_13_output);
    copyCastInt16ToInt32(
        output_layer->layer_14_input,
        input_layer->layer_14_output,
        sizeof(output_layer->layer_14_input) / sizeof(output_layer->layer_14_input[0]));
    run_mul(
        input_layer->layer_15_input,
        output_layer->layer_15_output);
    run_add1(
        output_layer->layer_16_input,
        input_layer->layer_16_output);
    run_div(
        input_layer->layer_17_input,
        output_layer->layer_17_output);
    run_add2(
        output_layer->layer_18_input,
        input_layer->layer_18_output);
    run_minimum(
        input_layer->layer_19_input,
        output_layer->layer_19_output);
    run_maximum(
        output_layer->layer_20_input,
        input_layer->layer_20_output);
    copyCastInt32ToInt8(
        input_layer->layer_21_input,
        output_layer->layer_21_output,
        sizeof(input_layer->layer_21_input) / sizeof(input_layer->layer_21_input[0]));
}

void run_signal_window(int16_t *input, int32_t input_size, int16_t *output)
{
    AUDIO_PREPROCESSOR_Operator_0 *op0 = (AUDIO_PREPROCESSOR_Operator_0 *)AUDIO_PREPROCESSOR_get_operator(&audio_preprocessor_model->operators, 0);
    AUDIO_PREPROCESSOR_Tensor_1 *tensor1 = (AUDIO_PREPROCESSOR_Tensor_1 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 1);
    SignalWindowParams params = {
        .input = input,
        .input_size = input_size,
        .weights = tensor1->data,
        .weight_size = sizeof(tensor1->data) / (sizeof(tensor1->data[0]) * 2),
        .shift = op0->builtin_options.shift,
        .output = output};

    signal_apply_window(&params);
}

int run_signal_fft_auto_scale(int16_t *input, int32_t input_size, int16_t *output)
{
    AUDIO_PREPROCESSOR_Operator_2 *op2 = (AUDIO_PREPROCESSOR_Operator_2 *)AUDIO_PREPROCESSOR_get_operator(&audio_preprocessor_model->operators, 2);

    SignalFFTAutoScaleParams fft_params = {
        .input = input,
        .size = input_size,
        .output = output};

    return FftAutoScale(&fft_params);
}

void run_signal_rfft(int16_t *input, Complex *output)
{
    AUDIO_PREPROCESSOR_Tensor_21 *tensor21 = (AUDIO_PREPROCESSOR_Tensor_21 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 21);
    AUDIO_PREPROCESSOR_Tensor_23 *tensor23 = (AUDIO_PREPROCESSOR_Tensor_23 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 23);
    size_t needed_memory = RfftInt16GetNeededMemory(512);
    // printf("Needed memory: %d\n", needed_memory);

    int32_t input_length = tensor21->shape[0];
    int32_t input_size = flatSize(sizeof(tensor21->shape) / sizeof(tensor21->shape[0]), tensor21->shape);
    int32_t output_length = tensor23->shape[(sizeof(tensor23->shape) / sizeof(tensor23->shape[0]) - 1)] / 2;
    int16_t fft_length = 512;
    int16_t state_size = 2836;
    int16_t working_buffer[fft_length];
    int8_t state[state_size];

    SignalRfftParams rfft_params = {
        .input = input,
        .input_length = input_length,
        .input_size = input_size,
        .output = output,
        .output_length = output_length,
        .working_buffer = working_buffer,
        .state = state,
        .state_size = state_size,
        .fft_length = fft_length};

    RfftInt16(&rfft_params);
}

void run_signal_energy(Complex *input, uint32_t *output)
{
    AUDIO_PREPROCESSOR_Operator_4 *op4 = (AUDIO_PREPROCESSOR_Operator_4 *)AUDIO_PREPROCESSOR_get_operator(&audio_preprocessor_model->operators, 4);

    SignalEnergyParams energy_params = {
        .input = input,
        .output = output,
        .start_index = op4->builtin_options.start_index,
        .end_index = op4->builtin_options.end_index};

    apply_energy(&energy_params);
}

void run_strided_slice(int32_t *input, int32_t *output)
{
    AUDIO_PREPROCESSOR_Operator_6 *op6 = (AUDIO_PREPROCESSOR_Operator_6 *)AUDIO_PREPROCESSOR_get_operator(&audio_preprocessor_model->operators, 6);
    AUDIO_PREPROCESSOR_Tensor_7 *tensor7 = (AUDIO_PREPROCESSOR_Tensor_7 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 7);
    AUDIO_PREPROCESSOR_Tensor_6 *tensor6 = (AUDIO_PREPROCESSOR_Tensor_6 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 6);
    AUDIO_PREPROCESSOR_Tensor_5 *tensor5 = (AUDIO_PREPROCESSOR_Tensor_5 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 5);
    AUDIO_PREPROCESSOR_Tensor_25 *tensor25 = (AUDIO_PREPROCESSOR_Tensor_25 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 25);
    int8_t dims = 1;

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
    strided_slice_params.ellipsis_mask = op6->builtin_options.ellipsis_mask;
    strided_slice_params.end_mask = op6->builtin_options.end_mask;
    strided_slice_params.new_axis_mask = op6->builtin_options.new_axis_mask;
    strided_slice_params.shrink_axis_mask = op6->builtin_options.shrink_axis_mask;
    strided_slice_params.offset = op6->builtin_options.offset;
    strided_slice_params.input = input;
    strided_slice_params.input_shape = tensor25->shape;
    strided_slice_params.input_shape_size = sizeof(tensor25->shape) / sizeof(tensor25->shape[0]);
    strided_slice_params.output = output;

    StridedSlice(&strided_slice_params);
}

void run_connectation(int32_t *input, int32_t *output)
{
    AUDIO_PREPROCESSOR_Operator_7 *op7 = (AUDIO_PREPROCESSOR_Operator_7 *)AUDIO_PREPROCESSOR_get_operator(&audio_preprocessor_model->operators, 7);

    AUDIO_PREPROCESSOR_Tensor_2 *tensor2 = (AUDIO_PREPROCESSOR_Tensor_2 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 2);
    AUDIO_PREPROCESSOR_Tensor_3 *tensor3 = (AUDIO_PREPROCESSOR_Tensor_3 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 3);
    AUDIO_PREPROCESSOR_Tensor_26 *tensor26 = (AUDIO_PREPROCESSOR_Tensor_26 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 26);
    AUDIO_PREPROCESSOR_Tensor_27 *tensor27 = (AUDIO_PREPROCESSOR_Tensor_27 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 27);

    ConcatenationParams concatenation_params;
    concatenation_params.axis = CalculatePositiveAxis(
        op7->builtin_options.axis,
        tensor27->shape[0]);
    concatenation_params.inputs_count = sizeof(op7->inputs) / sizeof(op7->inputs[0]);
    concatenation_params.input = (int32_t *[]){
        tensor3->data,
        input,
        tensor2->data};
    concatenation_params.input_shapes = (int32_t *[]){
        tensor3->shape,
        tensor26->shape,
        tensor2->shape};
    concatenation_params.output = output;
    concatenation_params.output_shape = tensor27->shape;
    concatenation_params.output_shape_size = sizeof(concatenation_params.output_shape) / sizeof(concatenation_params.output_shape[0]);

    RunConcatenation(&concatenation_params);
}

void run_signal_filter_bank(uint32_t *input, uint64_t *output)
{
    AUDIO_PREPROCESSOR_Operator_9 *op9 = (AUDIO_PREPROCESSOR_Operator_9 *)AUDIO_PREPROCESSOR_get_operator(&audio_preprocessor_model->operators, 9);
    AUDIO_PREPROCESSOR_Tensor_13 *tensor13 = (AUDIO_PREPROCESSOR_Tensor_13 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 13);
    AUDIO_PREPROCESSOR_Tensor_12 *tensor12 = (AUDIO_PREPROCESSOR_Tensor_12 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 12);
    AUDIO_PREPROCESSOR_Tensor_11 *tensor11 = (AUDIO_PREPROCESSOR_Tensor_11 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 11);
    AUDIO_PREPROCESSOR_Tensor_10 *tensor10 = (AUDIO_PREPROCESSOR_Tensor_10 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 10);
    AUDIO_PREPROCESSOR_Tensor_9 *tensor9 = (AUDIO_PREPROCESSOR_Tensor_9 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 9);
    AUDIO_PREPROCESSOR_Tensor_29 *tensor29 = (AUDIO_PREPROCESSOR_Tensor_29 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 29);

    SignalFilterBankParams signal_filter_bank_params;
    signal_filter_bank_params.config.num_channels = op9->builtin_options.num_channels;
    uint64_t work_area[41];
    signal_filter_bank_params.work_area = work_area;
    signal_filter_bank_params.config.weights = tensor13->data;
    signal_filter_bank_params.config.unweights = tensor12->data;
    signal_filter_bank_params.config.channel_frequency_starts = tensor11->data;
    signal_filter_bank_params.config.channel_weight_starts = tensor10->data;
    signal_filter_bank_params.config.channel_widths = tensor9->data;

    FilterbankAccumulateChannels(
        &signal_filter_bank_params,
        input,
        output,
        tensor29->shape,
        sizeof(tensor29->shape) / sizeof(tensor29->shape[0]));
}

void run_signal_bank_square_root(uint64_t *input, int32_t scale_bits, uint32_t *output)
{
    AUDIO_PREPROCESSOR_Tensor_29 *tensor29 = (AUDIO_PREPROCESSOR_Tensor_29 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 29);

    SignalBankSquareRootParams signal_bank_square_root_params;
    signal_bank_square_root_params.input = input;
    signal_bank_square_root_params.scale_bits = scale_bits;
    signal_bank_square_root_params.output = output;
    signal_bank_square_root_params.num_channels = tensor29->shape[0];

    SignalBankSquareRoot(&signal_bank_square_root_params);
}

void run_signal_filter_bank_spectral_subtraction(uint32_t *input, uint32_t *output, uint32_t *noise_estimate)
{
    AUDIO_PREPROCESSOR_Operator_11 *op11 = (AUDIO_PREPROCESSOR_Operator_11 *)AUDIO_PREPROCESSOR_get_operator(&audio_preprocessor_model->operators, 11);

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
    signal_filter_bank_spectral_subtraction_params.input = input;
    signal_filter_bank_spectral_subtraction_params.output = output;
    signal_filter_bank_spectral_subtraction_params.config = &spectral_subtraction_config;
    signal_filter_bank_spectral_subtraction_params.noise_estimate = noise_estimate;
    signal_filter_bank_spectral_subtraction_params.noise_estimate_size = sizeof(noise_estimate) / sizeof(noise_estimate[0]);

    SignalFilterBankSpectralSubtraction(&signal_filter_bank_spectral_subtraction_params);
}

void run_signal_pcan(uint32_t *input, uint32_t *output, uint32_t *noise_estimate)
{
    AUDIO_PREPROCESSOR_Operator_12 *op12 = (AUDIO_PREPROCESSOR_Operator_12 *)AUDIO_PREPROCESSOR_get_operator(&audio_preprocessor_model->operators, 12);
    AUDIO_PREPROCESSOR_Tensor_8 *tensor8 = (AUDIO_PREPROCESSOR_Tensor_8 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 8);
    AUDIO_PREPROCESSOR_Tensor_33 *tensor33 = (AUDIO_PREPROCESSOR_Tensor_33 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 33);

    SignalPcanParams signal_pcan_params;
    signal_pcan_params.input = input;
    signal_pcan_params.output = output;
    signal_pcan_params.snr_shift = op12->builtin_options.snr_shift;
    signal_pcan_params.noise_estimate = noise_estimate;
    signal_pcan_params.noise_estimate_size = sizeof(noise_estimate) / sizeof(noise_estimate[0]);
    signal_pcan_params.gain_lut = tensor8->data;
    signal_pcan_params.gain_lut_size = sizeof(tensor8->data) / sizeof(tensor8->data[0]);
    signal_pcan_params.num_channels = tensor33->shape[0];

    SignalPcan(&signal_pcan_params);
}

void run_signal_filter_bank_log(uint32_t *input, int16_t *output)
{
    AUDIO_PREPROCESSOR_Operator_13 *op13 = (AUDIO_PREPROCESSOR_Operator_13 *)AUDIO_PREPROCESSOR_get_operator(&audio_preprocessor_model->operators, 13);
    AUDIO_PREPROCESSOR_Tensor_34 *tensor34 = (AUDIO_PREPROCESSOR_Tensor_34 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 34);

    SignalFilterBankLogParams signal_filter_bank_log_params;
    signal_filter_bank_log_params.input = input;
    signal_filter_bank_log_params.output = output;
    signal_filter_bank_log_params.input_correction_bits = op13->builtin_options.input_correction_bits;
    signal_filter_bank_log_params.output_scale = op13->builtin_options.output_scale;
    signal_filter_bank_log_params.num_channels = tensor34->shape[0];

    SignalFilterbankLog(&signal_filter_bank_log_params);
}

void run_mul(int32_t *input, int32_t *output)
{
    AUDIO_PREPROCESSOR_Tensor_35 *tensor35 = (AUDIO_PREPROCESSOR_Tensor_35 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 35);
    AUDIO_PREPROCESSOR_Tensor_17 *tensor17 = (AUDIO_PREPROCESSOR_Tensor_17 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 17);
    AUDIO_PREPROCESSOR_Tensor_36 *tensor36 = (AUDIO_PREPROCESSOR_Tensor_36 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 36);

    MulParams mul_params;
    mul_params.input1_data = input;
    mul_params.input1_shape = tensor35->shape;
    mul_params.input1_shape_size = sizeof(tensor35->shape) / sizeof(tensor35->shape[0]);
    mul_params.flat_size = flatSize(
        sizeof(tensor35->shape) / sizeof(tensor35->shape[0]),
        tensor35->shape);
    mul_params.input2_data = tensor17->data;
    mul_params.input2_shape = tensor17->shape;
    mul_params.input2_shape_size = sizeof(tensor17->shape) / sizeof(tensor17->shape[0]);
    mul_params.output_data = output;
    mul_params.output_shape = tensor36->shape;
    mul_params.output_shape_size = sizeof(tensor36->shape) / sizeof(tensor36->shape[0]);

    CalculateActivationRange(
        NONE,
        &mul_params.output_activation_min,
        &mul_params.output_activation_max);

    Mul(&mul_params);
}

void run_add1(int32_t *input, int32_t *output)
{
    AUDIO_PREPROCESSOR_Tensor_4 *tensor4 = (AUDIO_PREPROCESSOR_Tensor_4 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 4);
    AUDIO_PREPROCESSOR_Tensor_36 *tensor36 = (AUDIO_PREPROCESSOR_Tensor_36 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 36);

    AddParams add_params;
    add_params.input1_data = input;
    add_params.input1_dims = tensor36->shape;
    add_params.input1_dims_count = sizeof(tensor36->shape) / sizeof(tensor36->shape[0]);
    add_params.input2_data = tensor4->data;
    add_params.input2_dims = tensor4->shape;
    add_params.input2_dims_count = sizeof(tensor4->shape) / sizeof(tensor4->shape[0]);
    add_params.output_data = output;
    add_params.activation_min = INT32_MIN;
    add_params.activation_max = INT32_MAX;
    add_params.flat_size = flatSize(
        sizeof(tensor36->shape) / sizeof(tensor36->shape[0]),
        tensor36->shape);

    Add(&add_params);
}

void run_div(int32_t *input, int32_t *output)
{
    AUDIO_PREPROCESSOR_Tensor_18 *tensor18 = (AUDIO_PREPROCESSOR_Tensor_18 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 18);
    AUDIO_PREPROCESSOR_Tensor_37 *tensor37 = (AUDIO_PREPROCESSOR_Tensor_37 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 37);
    AUDIO_PREPROCESSOR_Tensor_38 *tensor38 = (AUDIO_PREPROCESSOR_Tensor_38 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 38);

    DivParams div_params;
    div_params.input1_data = input;
    div_params.input1_shape = tensor37->shape;
    div_params.input1_shape_size = sizeof(tensor37->shape) / sizeof(tensor37->shape[0]);
    div_params.input2_data = tensor18->data;
    div_params.input2_shape = tensor18->shape;
    div_params.input2_shape_size = sizeof(tensor18->shape) / sizeof(tensor18->shape[0]);
    div_params.output_data = output;
    div_params.output_shape = tensor38->shape;
    div_params.output_shape_size = sizeof(tensor38->shape) / sizeof(tensor38->shape[0]);

    CalculateActivationRange(
        NONE,
        &div_params.output_activation_min,
        &div_params.output_activation_max);
    div_params.flat_size = flatSize(
        sizeof(tensor37->shape) / sizeof(tensor37->shape[0]),
        tensor37->shape);

    Div(&div_params);
}

void run_add2(int32_t *input, int32_t *output)
{
    AUDIO_PREPROCESSOR_Tensor_16 *tensor16 = (AUDIO_PREPROCESSOR_Tensor_16 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 16);
    AUDIO_PREPROCESSOR_Tensor_38 *tensor38 = (AUDIO_PREPROCESSOR_Tensor_38 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 38);

    AddParams add_params2;
    add_params2.input1_data = input;
    add_params2.input1_dims = tensor38->shape;
    add_params2.input1_dims_count = sizeof(tensor38->shape) / sizeof(tensor38->shape[0]);
    add_params2.input2_data = tensor16->data;
    add_params2.input2_dims = tensor16->shape;
    add_params2.input2_dims_count = sizeof(tensor16->shape) / sizeof(tensor16->shape[0]);
    add_params2.output_data = output;
    add_params2.activation_min = INT32_MIN;
    add_params2.activation_max = INT32_MAX;
    add_params2.flat_size = flatSize(
        sizeof(tensor38->shape) / sizeof(tensor38->shape[0]),
        tensor38->shape);

    Add(&add_params2);
}

void run_minimum(int32_t *input, int32_t *output)
{
    AUDIO_PREPROCESSOR_Tensor_39 *tensor39 = (AUDIO_PREPROCESSOR_Tensor_39 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 39);
    AUDIO_PREPROCESSOR_Tensor_14 *tensor14 = (AUDIO_PREPROCESSOR_Tensor_14 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 14);
    AUDIO_PREPROCESSOR_Tensor_40 *tensor40 = (AUDIO_PREPROCESSOR_Tensor_40 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 40);

    MinimumParams minimum_params;
    minimum_params.input1_data = input;
    minimum_params.input1_shape = tensor39->shape;
    minimum_params.input1_shape_size = sizeof(tensor39->shape) / sizeof(tensor39->shape[0]);
    minimum_params.input2_data = tensor14->data;
    minimum_params.input2_shape = tensor14->shape;
    minimum_params.input2_shape_size = sizeof(tensor14->shape) / sizeof(tensor14->shape[0]);
    minimum_params.output_data = output;
    minimum_params.output_shape = tensor40->shape;
    minimum_params.output_shape_size = sizeof(tensor40->shape) / sizeof(tensor40->shape[0]);
    minimum_params.flat_size = flatSize(
        sizeof(tensor39->shape) / sizeof(tensor39->shape[0]),
        tensor39->shape);

    Minimum(&minimum_params);
}

void run_maximum(int32_t *input, int32_t *output)
{
    AUDIO_PREPROCESSOR_Tensor_40 *tensor40 = (AUDIO_PREPROCESSOR_Tensor_40 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 40);
    AUDIO_PREPROCESSOR_Tensor_16 *tensor16 = (AUDIO_PREPROCESSOR_Tensor_16 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 16);
    AUDIO_PREPROCESSOR_Tensor_41 *tensor41 = (AUDIO_PREPROCESSOR_Tensor_41 *)AUDIO_PREPROCESSOR_get_tensor(&audio_preprocessor_model->tensors, 41);

    MaximumParams maximum_params;
    maximum_params.input1_data = input;
    maximum_params.input1_shape = tensor40->shape;
    maximum_params.input1_shape_size = sizeof(tensor40->shape) / sizeof(tensor40->shape[0]);
    maximum_params.input2_data = tensor16->data;
    maximum_params.input2_shape = tensor16->shape;
    maximum_params.input2_shape_size = sizeof(tensor16->shape) / sizeof(tensor16->shape[0]);
    maximum_params.output_data = output;
    maximum_params.output_shape = tensor41->shape;
    maximum_params.output_shape_size = sizeof(tensor41->shape) / sizeof(tensor41->shape[0]);
    maximum_params.flat_size = flatSize(
        sizeof(tensor40->shape) / sizeof(tensor40->shape[0]),
        tensor40->shape);

    Maximum(&maximum_params);
}

void print_bytes(void *ptr, int size)
{
    unsigned char *p = ptr;
    int i;
    for (i = 0; i < size / 4; i++)
    {
        for (int j = 0; j < 4; j++)
        {
            printf("%p " BYTE_TO_BINARY_PATTERN " (%x) ", &p[i * 4 + j], BYTE_TO_BINARY(p[i * 4 + j]), p[i * 4 + j]);
        }
        printf("\n");
    }
    printf("\n");
}
