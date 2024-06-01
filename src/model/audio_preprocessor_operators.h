#ifndef AUDIO_PREPROCESSOR_OPERATOR_H
#define AUDIO_PREPROCESSOR_OPERATOR_H

#include <stdio.h>
#include <stdint.h>
#include "audio_preprocessor_tensors.h"
#include "operator.h"

typedef struct {
    int32_t inputs[2];
    int32_t outputs[1];
    BuiltinOperator opcode;
    char pad[2];
    SignalWindowOptions builtin_options;
} __attribute__((__packed__)) AUDIO_PREPROCESSOR_Operator_0;

typedef struct {
    int32_t inputs[2];
    int32_t outputs[1];
    BuiltinOperator opcode;
    char pad[2];
} __attribute__((__packed__)) AUDIO_PREPROCESSOR_Operator_1;

typedef struct {
    int32_t inputs[1];
    int32_t outputs[2];
    BuiltinOperator opcode;
    char pad[2];
} __attribute__((__packed__)) AUDIO_PREPROCESSOR_Operator_2;

typedef struct {
    int32_t inputs[1];
    int32_t outputs[1];
    BuiltinOperator opcode;
    char pad[2];
    SignalRfftOptions builtin_options;
} __attribute__((__packed__)) AUDIO_PREPROCESSOR_Operator_3;

typedef struct {
    int32_t inputs[1];
    int32_t outputs[1];
    BuiltinOperator opcode;
    char pad[2];
    SignalEnergyOptions builtin_options;
} __attribute__((__packed__)) AUDIO_PREPROCESSOR_Operator_4;

typedef struct {
    int32_t inputs[1];
    int32_t outputs[1];
    BuiltinOperator opcode;
    char pad[2];
} __attribute__((__packed__)) AUDIO_PREPROCESSOR_Operator_5;

typedef struct {
    int32_t inputs[4];
    int32_t outputs[1];
    BuiltinOperator opcode;
    char pad[2];
    StridedSliceOptions builtin_options;
} __attribute__((__packed__)) AUDIO_PREPROCESSOR_Operator_6;

typedef struct {
    int32_t inputs[3];
    int32_t outputs[1];
    BuiltinOperator opcode;
    char pad[2];
    ConcatenationOptions builtin_options;
} __attribute__((__packed__)) AUDIO_PREPROCESSOR_Operator_7;

typedef struct {
    int32_t inputs[1];
    int32_t outputs[1];
    BuiltinOperator opcode;
    char pad[2];
} __attribute__((__packed__)) AUDIO_PREPROCESSOR_Operator_8;

typedef struct {
    int32_t inputs[6];
    int32_t outputs[1];
    BuiltinOperator opcode;
    char pad[2];
} __attribute__((__packed__)) AUDIO_PREPROCESSOR_Operator_9;

typedef struct {
    int32_t inputs[2];
    int32_t outputs[1];
    BuiltinOperator opcode;
    char pad[2];
    SignalFilterBankOptions builtin_options;
} __attribute__((__packed__)) AUDIO_PREPROCESSOR_Operator_10;

typedef struct {
    int32_t inputs[1];
    int32_t outputs[2];
    BuiltinOperator opcode;
    char pad[2];
    SignalFilterBankSpectralSubtractionOptions builtin_options;
} __attribute__((__packed__)) AUDIO_PREPROCESSOR_Operator_11;

typedef struct {
    int32_t inputs[3];
    int32_t outputs[1];
    BuiltinOperator opcode;
    char pad[2];
    SignalPcanOptions builtin_options;
} __attribute__((__packed__)) AUDIO_PREPROCESSOR_Operator_12;

typedef struct {
    int32_t inputs[1];
    int32_t outputs[1];
    BuiltinOperator opcode;
    char pad[2];
    SignalFilterBankLogOptions builtin_options;
} __attribute__((__packed__)) AUDIO_PREPROCESSOR_Operator_13;

typedef struct {
    int32_t inputs[1];
    int32_t outputs[1];
    BuiltinOperator opcode;
    char pad[2];
} __attribute__((__packed__)) AUDIO_PREPROCESSOR_Operator_14;

typedef struct {
    int32_t inputs[2];
    int32_t outputs[1];
    BuiltinOperator opcode;
    char pad[2];
} __attribute__((__packed__)) AUDIO_PREPROCESSOR_Operator_15;

typedef struct {
    int32_t inputs[2];
    int32_t outputs[1];
    BuiltinOperator opcode;
    char pad[2];
} __attribute__((__packed__)) AUDIO_PREPROCESSOR_Operator_16;

typedef struct {
    int32_t inputs[2];
    int32_t outputs[1];
    BuiltinOperator opcode;
    char pad[2];
} __attribute__((__packed__)) AUDIO_PREPROCESSOR_Operator_17;

typedef struct {
    int32_t inputs[2];
    int32_t outputs[1];
    BuiltinOperator opcode;
    char pad[2];
} __attribute__((__packed__)) AUDIO_PREPROCESSOR_Operator_18;

typedef struct {
    int32_t inputs[2];
    int32_t outputs[1];
    BuiltinOperator opcode;
    char pad[2];
} __attribute__((__packed__)) AUDIO_PREPROCESSOR_Operator_19;

typedef struct {
    int32_t inputs[2];
    int32_t outputs[1];
    BuiltinOperator opcode;
    char pad[2];
} __attribute__((__packed__)) AUDIO_PREPROCESSOR_Operator_20;

typedef struct {
    int32_t inputs[1];
    int32_t outputs[1];
    BuiltinOperator opcode;
    char pad[2];
} __attribute__((__packed__)) AUDIO_PREPROCESSOR_Operator_21;

typedef struct {
    AUDIO_PREPROCESSOR_Operator_0 operator_0;
    AUDIO_PREPROCESSOR_Operator_1 operator_1;
    AUDIO_PREPROCESSOR_Operator_2 operator_2;
    AUDIO_PREPROCESSOR_Operator_3 operator_3;
    AUDIO_PREPROCESSOR_Operator_4 operator_4;
    AUDIO_PREPROCESSOR_Operator_5 operator_5;
    AUDIO_PREPROCESSOR_Operator_6 operator_6;
    AUDIO_PREPROCESSOR_Operator_7 operator_7;
    AUDIO_PREPROCESSOR_Operator_8 operator_8;
    AUDIO_PREPROCESSOR_Operator_9 operator_9;
    AUDIO_PREPROCESSOR_Operator_10 operator_10;
    AUDIO_PREPROCESSOR_Operator_11 operator_11;
    AUDIO_PREPROCESSOR_Operator_12 operator_12;
    AUDIO_PREPROCESSOR_Operator_13 operator_13;
    AUDIO_PREPROCESSOR_Operator_14 operator_14;
    AUDIO_PREPROCESSOR_Operator_15 operator_15;
    AUDIO_PREPROCESSOR_Operator_16 operator_16;
    AUDIO_PREPROCESSOR_Operator_17 operator_17;
    AUDIO_PREPROCESSOR_Operator_18 operator_18;
    AUDIO_PREPROCESSOR_Operator_19 operator_19;
    AUDIO_PREPROCESSOR_Operator_20 operator_20;
    AUDIO_PREPROCESSOR_Operator_21 operator_21;
} __attribute__((__packed__)) AUDIO_PREPROCESSOR_Operators;

uint8_t *AUDIO_PREPROCESSOR_get_operator(const AUDIO_PREPROCESSOR_Operators *operators, int index);

#endif // AUDIO_PREPROCESSOR_OPERATOR_H
