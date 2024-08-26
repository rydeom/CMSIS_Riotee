#include <stdio.h>
#include <stdint.h>
#include "micro_speech_operators.h"

uint8_t *MICRO_SPEECH_get_operator(const MICRO_SPEECH_Operators *operators, int index){
    uint32_t sizes[4] = {0,
sizeof(operators->operator_0),
sizeof(operators->operator_1) + sizeof(operators->operator_0),
sizeof(operators->operator_2) + sizeof(operators->operator_0) + sizeof(operators->operator_1)};
    return (uint8_t *)operators + sizes[index];
}

