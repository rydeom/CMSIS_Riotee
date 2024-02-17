#include <stdio.h>
#include <stdint.h>
#include "buffer.h"
#include "printf.h"

uint8_t *get_buffer(Buffers *buffers, int index){
    uint32_t sizes[13] = {0,
sizeof(buffers->buffer_0),
sizeof(buffers->buffer_1) + sizeof(buffers->buffer_0),
sizeof(buffers->buffer_2) + sizeof(buffers->buffer_0) + sizeof(buffers->buffer_1),
sizeof(buffers->buffer_3) + sizeof(buffers->buffer_0) + sizeof(buffers->buffer_1) + sizeof(buffers->buffer_2),
sizeof(buffers->buffer_4) + sizeof(buffers->buffer_0) + sizeof(buffers->buffer_1) + sizeof(buffers->buffer_2) + sizeof(buffers->buffer_3),
sizeof(buffers->buffer_5) + sizeof(buffers->buffer_0) + sizeof(buffers->buffer_1) + sizeof(buffers->buffer_2) + sizeof(buffers->buffer_3) + sizeof(buffers->buffer_4),
sizeof(buffers->buffer_6) + sizeof(buffers->buffer_0) + sizeof(buffers->buffer_1) + sizeof(buffers->buffer_2) + sizeof(buffers->buffer_3) + sizeof(buffers->buffer_4) + sizeof(buffers->buffer_5),
sizeof(buffers->buffer_7) + sizeof(buffers->buffer_0) + sizeof(buffers->buffer_1) + sizeof(buffers->buffer_2) + sizeof(buffers->buffer_3) + sizeof(buffers->buffer_4) + sizeof(buffers->buffer_5) + sizeof(buffers->buffer_6),
sizeof(buffers->buffer_8) + sizeof(buffers->buffer_0) + sizeof(buffers->buffer_1) + sizeof(buffers->buffer_2) + sizeof(buffers->buffer_3) + sizeof(buffers->buffer_4) + sizeof(buffers->buffer_5) + sizeof(buffers->buffer_6) + sizeof(buffers->buffer_7),
sizeof(buffers->buffer_9) + sizeof(buffers->buffer_0) + sizeof(buffers->buffer_1) + sizeof(buffers->buffer_2) + sizeof(buffers->buffer_3) + sizeof(buffers->buffer_4) + sizeof(buffers->buffer_5) + sizeof(buffers->buffer_6) + sizeof(buffers->buffer_7) + sizeof(buffers->buffer_8),
sizeof(buffers->buffer_10) + sizeof(buffers->buffer_0) + sizeof(buffers->buffer_1) + sizeof(buffers->buffer_2) + sizeof(buffers->buffer_3) + sizeof(buffers->buffer_4) + sizeof(buffers->buffer_5) + sizeof(buffers->buffer_6) + sizeof(buffers->buffer_7) + sizeof(buffers->buffer_8) + sizeof(buffers->buffer_9),
sizeof(buffers->buffer_11) + sizeof(buffers->buffer_0) + sizeof(buffers->buffer_1) + sizeof(buffers->buffer_2) + sizeof(buffers->buffer_3) + sizeof(buffers->buffer_4) + sizeof(buffers->buffer_5) + sizeof(buffers->buffer_6) + sizeof(buffers->buffer_7) + sizeof(buffers->buffer_8) + sizeof(buffers->buffer_9) + sizeof(buffers->buffer_10)};
    return (uint8_t *)buffers + sizes[index];
}

void print_buffer_pointer(Buffers *buffers) {
    printf("Buffers: [%x, %x, %x, %x, %x, %x, %x, %x, %x, %x, %x, %x, %x]\r\n", &buffers->buffer_0, &buffers->buffer_1, &buffers->buffer_2, &buffers->buffer_3, &buffers->buffer_4, &buffers->buffer_5, &buffers->buffer_6, &buffers->buffer_7, &buffers->buffer_8, &buffers->buffer_9, &buffers->buffer_10, &buffers->buffer_11, &buffers->buffer_12);
}

