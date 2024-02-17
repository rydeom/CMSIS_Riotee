#ifndef BUFFER_H
#define BUFFER_H

#include <stdio.h>
#include <stdint.h>

typedef struct {
    unsigned char data[0];
} Buffer_0;

typedef struct {
    unsigned char data[0];
} Buffer_1;

typedef struct {
    unsigned char data[4];
} Buffer_2;

typedef struct {
    unsigned char data[16];
} Buffer_3;

typedef struct {
    unsigned char data[64];
} Buffer_4;

typedef struct {
    unsigned char data[256];
} Buffer_5;

typedef struct {
    unsigned char data[64];
} Buffer_6;

typedef struct {
    unsigned char data[16];
} Buffer_7;

typedef struct {
    unsigned char data[0];
} Buffer_8;

typedef struct {
    unsigned char data[0];
} Buffer_9;

typedef struct {
    unsigned char data[0];
} Buffer_10;

typedef struct {
    unsigned char data[16];
} Buffer_11;

typedef struct {
    unsigned char data[88];
} Buffer_12;

typedef struct {
    Buffer_0 buffer_0;
    Buffer_1 buffer_1;
    Buffer_2 buffer_2;
    Buffer_3 buffer_3;
    Buffer_4 buffer_4;
    Buffer_5 buffer_5;
    Buffer_6 buffer_6;
    Buffer_7 buffer_7;
    Buffer_8 buffer_8;
    Buffer_9 buffer_9;
    Buffer_10 buffer_10;
    Buffer_11 buffer_11;
    Buffer_12 buffer_12;
} Buffers;

uint8_t *get_buffer(Buffers *buffers, int index);

void print_buffer_pointer(Buffers *buffers);

#endif // BUFFER_H
