#ifndef TENSOR_H
#define TENSOR_H

#include <stdio.h>
#include <stdint.h>
#include "arm_nn_types.h"

typedef enum {
    FLOAT32,
    FLOAT16,
    INT32,
    UINT8,
    INT64,
    STRING,
    BOOL,
    INT16,
    COMPLEX64,
    INT8,
    FLOAT64,
    COMPLEX128,
    UINT64,
    RESOURCE,
    VARIANT,
    UINT32,
    UINT16,
    INT4,
} TensorType;

typedef struct {
    float scale[1];
    int64_t zero_point[1];
} __attribute__((__packed__)) QuantizationParameters_0;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[2];
    uint32_t buffer;
    QuantizationParameters_0 quantization;
} Tensor_0;

typedef struct {
    float scale[1];
    int64_t zero_point[1];
} __attribute__((__packed__)) QuantizationParameters_1;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
    uint32_t buffer;
    QuantizationParameters_1 quantization;
    unsigned char data[4];
} Tensor_1;

typedef struct {
    float scale[1];
    int64_t zero_point[1];
} __attribute__((__packed__)) QuantizationParameters_2;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[2];
    uint32_t buffer;
    QuantizationParameters_2 quantization;
    unsigned char data[16];
} Tensor_2;

typedef struct {
    float scale[1];
    int64_t zero_point[1];
} __attribute__((__packed__)) QuantizationParameters_3;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
    uint32_t buffer;
    QuantizationParameters_3 quantization;
    unsigned char data[64];
} Tensor_3;

typedef struct {
    float scale[1];
    int64_t zero_point[1];
} __attribute__((__packed__)) QuantizationParameters_4;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[2];
    uint32_t buffer;
    QuantizationParameters_4 quantization;
    unsigned char data[256];
} Tensor_4;

typedef struct {
    float scale[1];
    int64_t zero_point[1];
} __attribute__((__packed__)) QuantizationParameters_5;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[1];
    uint32_t buffer;
    QuantizationParameters_5 quantization;
    unsigned char data[64];
} Tensor_5;

typedef struct {
    float scale[1];
    int64_t zero_point[1];
} __attribute__((__packed__)) QuantizationParameters_6;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[2];
    uint32_t buffer;
    QuantizationParameters_6 quantization;
    unsigned char data[16];
} Tensor_6;

typedef struct {
    float scale[1];
    int64_t zero_point[1];
} __attribute__((__packed__)) QuantizationParameters_7;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[2];
    uint32_t buffer;
    QuantizationParameters_7 quantization;
} Tensor_7;

typedef struct {
    float scale[1];
    int64_t zero_point[1];
} __attribute__((__packed__)) QuantizationParameters_8;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[2];
    uint32_t buffer;
    QuantizationParameters_8 quantization;
} Tensor_8;

typedef struct {
    float scale[1];
    int64_t zero_point[1];
} __attribute__((__packed__)) QuantizationParameters_9;

typedef struct {
    TensorType type;
    char pad[3];
    int32_t shape[2];
    uint32_t buffer;
    QuantizationParameters_9 quantization;
} Tensor_9;

typedef struct {
    Tensor_0 tensor_0;
    Tensor_1 tensor_1;
    Tensor_2 tensor_2;
    Tensor_3 tensor_3;
    Tensor_4 tensor_4;
    Tensor_5 tensor_5;
    Tensor_6 tensor_6;
    Tensor_7 tensor_7;
    Tensor_8 tensor_8;
    Tensor_9 tensor_9;
} __attribute__((__packed__)) Tensors;

uint8_t *get_tensor(Tensors *tensors, int index);

void print_tensor_pointer(Tensors *tensors);

void get_tensor_size_0(Tensors *tensors, cmsis_nn_dims *dims);

void get_tensor_size_1(Tensors *tensors, cmsis_nn_dims *dims);

void get_tensor_size_2(Tensors *tensors, cmsis_nn_dims *dims);

void get_tensor_size_3(Tensors *tensors, cmsis_nn_dims *dims);

void get_tensor_size_4(Tensors *tensors, cmsis_nn_dims *dims);

void get_tensor_size_5(Tensors *tensors, cmsis_nn_dims *dims);

void get_tensor_size_6(Tensors *tensors, cmsis_nn_dims *dims);

void get_tensor_size_7(Tensors *tensors, cmsis_nn_dims *dims);

void get_tensor_size_8(Tensors *tensors, cmsis_nn_dims *dims);

void get_tensor_size_9(Tensors *tensors, cmsis_nn_dims *dims);

void get_tensor_size(Tensors *tensors, cmsis_nn_dims *dims, int index);

#endif // TENSOR_H
