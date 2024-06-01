#ifndef MICRO_SPEECH_OPERATOR_H
#define MICRO_SPEECH_OPERATOR_H

#include <stdio.h>
#include <stdint.h>
#include "micro_speech_tensors.h"
#include "operator.h"

typedef struct {
    int32_t inputs[2];
    int32_t outputs[1];
    BuiltinOperator opcode;
    char pad[2];
} __attribute__((__packed__)) MICRO_SPEECH_Operator_0;

typedef struct {
    int32_t inputs[3];
    int32_t outputs[1];
    BuiltinOperator opcode;
    char pad[2];
} __attribute__((__packed__)) MICRO_SPEECH_Operator_1;

typedef struct {
    int32_t inputs[3];
    int32_t outputs[1];
    BuiltinOperator opcode;
    char pad[2];
} __attribute__((__packed__)) MICRO_SPEECH_Operator_2;

typedef struct {
    int32_t inputs[1];
    int32_t outputs[1];
    BuiltinOperator opcode;
    char pad[2];
} __attribute__((__packed__)) MICRO_SPEECH_Operator_3;

typedef struct {
    MICRO_SPEECH_Operator_0 operator_0;
    MICRO_SPEECH_Operator_1 operator_1;
    MICRO_SPEECH_Operator_2 operator_2;
    MICRO_SPEECH_Operator_3 operator_3;
} __attribute__((__packed__)) MICRO_SPEECH_Operators;

uint8_t *MICRO_SPEECH_get_operator(const MICRO_SPEECH_Operators *operators, int index);

#endif // MICRO_SPEECH_OPERATOR_H
