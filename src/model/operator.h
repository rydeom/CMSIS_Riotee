#ifndef OPERATOR_H
#define OPERATOR_H

#include <stdio.h>
#include <stdint.h>
#include "tensor.h"

typedef enum {
    ADD,
    AVERAGE_POOL_2D,
    CONCATENATION,
    CONV_2D,
    DEPTHWISE_CONV_2D,
    DEPTH_TO_SPACE,
    DEQUANTIZE,
    EMBEDDING_LOOKUP,
    FLOOR,
    FULLY_CONNECTED,
} BuiltinOperator;

typedef enum {
    NONE = 0,
    RELU = 1,
    RELU_N1_TO_1 = 2,
    RELU6 = 3,
    TANH = 4,
    SIGN_BIT = 5,
} ActivationFunctionType;

typedef enum {
    PADDING_SAME = 0,
    PADDING_VALID = 1,
} Padding;

typedef enum {
    DEFAULT = 0,
    SHUFFLED4x16INT8 = 1,
} FullyConnectedOptionsWeightsFormat;

typedef struct {
     ActivationFunctionType fused_activation_function;
     TensorType quantized_bias_type;
     FullyConnectedOptionsWeightsFormat weights_format;
    char pad[1];
} __attribute__((__packed__)) FullyConnectedOptions;

typedef struct {
     Padding padding;
     ActivationFunctionType fused_activation_function;
     TensorType quantized_bias_type;
    char pad[1];
    int32_t stride_w;
    int32_t stride_h;
    int32_t dilation_w_factor;
    int32_t dilation_h_factor;
} __attribute__((__packed__)) Conv2DOptions;

typedef struct {
     Padding padding;
     ActivationFunctionType fused_activation_function;
    char pad[2];
    int32_t stride_w;
    int32_t stride_h;
    int32_t depth_multiplier;
    int32_t dilation_w_factor;
    int32_t dilation_h_factor;
} __attribute__((__packed__)) DepthwiseConv2DOptions;

typedef struct {
    int32_t inputs[3];
    int32_t outputs[1];
    BuiltinOperator opcode;
    char pad[3];
    FullyConnectedOptions builtin_options;
} __attribute__((__packed__)) Operator_0;

typedef struct {
    int32_t inputs[3];
    int32_t outputs[1];
    BuiltinOperator opcode;
    char pad[3];
    FullyConnectedOptions builtin_options;
} __attribute__((__packed__)) Operator_1;

typedef struct {
    int32_t inputs[3];
    int32_t outputs[1];
    BuiltinOperator opcode;
    char pad[3];
    FullyConnectedOptions builtin_options;
} __attribute__((__packed__)) Operator_2;

typedef struct {
    Operator_0 operator_0;
    Operator_1 operator_1;
    Operator_2 operator_2;
} __attribute__((__packed__)) Operators;

uint8_t *get_operator(Operators *operators, int index);

#endif // OPERATOR_H
