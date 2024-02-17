#include <stdio.h>
#include <stdint.h>
#include "operator.h"

uint8_t *get_operator(Operators *operators, int index){
    uint32_t sizes[3] = {0,
sizeof(operators->operator_0),
sizeof(operators->operator_1) + sizeof(operators->operator_0)};
    return (uint8_t *)operators + sizes[index];
}

