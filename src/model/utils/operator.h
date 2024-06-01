#ifndef OPERATOR_H
#define OPERATOR_H

#include "tensor.h"
#include <stdint.h>

typedef enum
{
    ADD = 0,
    AVERAGE_POOL_2D = 1,
    CONCATENATION = 2,
    CONV_2D = 3,
    DEPTHWISE_CONV_2D = 4,
    DEPTH_TO_SPACE = 5,
    DEQUANTIZE = 6,
    EMBEDDING_LOOKUP = 7,
    FLOOR = 8,
    FULLY_CONNECTED = 9,
    RESHAPE = 22,
    SIGNAL_WINDOW = 1024,
    SIGNAL_FFT_AUTO_SCALE = 1025,
    SIGNAL_RFFT = 1026,
    SIGNAL_ENERGY = 1027,
    SIGNAL_FILTER_BANK_SQUARE_ROOT = 1028,
    SIGNAL_FILTER_BANK_SPECTRAL_SUBTRACTION = 1029,
    SIGNAL_PCAN = 1030,
    SIGNAL_FILTER_BANK_LOG = 1031,
} BuiltinOperator;

typedef enum
{
    NONE = 0,
    RELU = 1,
    RELU_N1_TO_1 = 2,
    RELU6 = 3,
    TANH = 4,
    SIGN_BIT = 5,
} ActivationFunctionType;

typedef enum
{
    TFLIE_TYPE_NO_TYPE = 0,
    TFLIE_TYPE_FLOAT32 = 1,
    TFLIE_TYPE_INT32 = 2,
    TFLIE_TYPE_UINT8 = 3,
    TFLIE_TYPE_INT64 = 4,
    TFLIE_TYPE_STRING = 5,
    TFLIE_TYPE_BOOL = 6,
    TFLIE_TYPE_INT16 = 7,
    TFLIE_TYPE_COMPLEX64 = 8,
    TFLIE_TYPE_INT8 = 9,
    TFLIE_TYPE_FLOAT16 = 10,
    TFLIE_TYPE_FLOAT64 = 11,
    TFLIE_TYPE_COMPLEX128 = 12,
    TFLIE_TYPE_UINT64 = 13,
    TFLIE_TYPE_RESOURCE = 14,
    TFLIE_TYPE_VARIANT = 15,
    TFLIE_TYPE_UINT32 = 16,
    TFLIE_TYPE_UINT16 = 17,
    TFLIE_TYPE_INT4 = 18,
    TFLIE_TYPE_BFLOAT16 = 19,
} TFLiteType;

typedef enum
{
    PADDING_SAME = 0,
    PADDING_VALID = 1,
} Padding;

typedef enum
{
    DEFAULT = 0,
    SHUFFLED4x16INT8 = 1,
} FullyConnectedOptionsWeightsFormat;

typedef struct
{
    int32_t shift;
} __attribute__((__packed__)) SignalWindowOptions;

typedef struct
{
    int32_t fft_length;
    TFLiteType fft_type;
    char pad[3];
} __attribute__((__packed__)) SignalRfftOptions;

typedef struct
{
    int32_t end_index;
    int32_t start_index;
} __attribute__((__packed__)) SignalEnergyOptions;

typedef struct
{
    int32_t num_channels;
} __attribute__((__packed__)) SignalFilterBankOptions;

typedef struct
{
    int32_t alternate_one_minus_smoothing;
    int32_t alternate_smoothing;
    uint8_t clamping;
    char pad[3];
    int32_t min_signal_remaining;
    int32_t num_channels;
    int32_t one_minus_smoothing;
    int32_t smoothing;
    int32_t smoothing_bits;
    int32_t spectral_subtraction_bits;
} __attribute__((__packed__)) SignalFilterBankSpectralSubtractionOptions;

typedef struct
{
    int32_t snr_shift;
} __attribute__((__packed__)) SignalPcanOptions;

typedef struct
{
    int32_t input_correction_bits;
    int32_t output_scale;
} __attribute__((__packed__)) SignalFilterBankLogOptions;

typedef struct
{
    int16_t begin_mask;
    int16_t ellipsis_mask;
    int16_t end_mask;
    int16_t new_axis_mask;
    int16_t shrink_axis_mask;
    uint8_t offset;
    char pad[1];
} __attribute__((__packed__)) StridedSliceOptions;

typedef struct
{
    int8_t axis;
    char pad[3];
} __attribute__((__packed__)) ConcatenationOptions;

typedef struct
{
    ActivationFunctionType fused_activation_function;
    TensorType quantized_bias_type;
    FullyConnectedOptionsWeightsFormat weights_format;
    char pad[1];
} __attribute__((__packed__)) FullyConnectedOptions;

typedef struct
{
    Padding padding;
    ActivationFunctionType fused_activation_function;
    TensorType quantized_bias_type;
    char pad[1];
    int32_t stride_w;
    int32_t stride_h;
    int32_t dilation_w_factor;
    int32_t dilation_h_factor;
} __attribute__((__packed__)) Conv2DOptions;

typedef struct
{
    Padding padding;
    ActivationFunctionType fused_activation_function;
    char pad[2];
    int32_t stride_w;
    int32_t stride_h;
    int32_t depth_multiplier;
    int32_t dilation_w_factor;
    int32_t dilation_h_factor;
} __attribute__((__packed__)) DepthwiseConv2DOptions;

#endif // OPERATOR_H