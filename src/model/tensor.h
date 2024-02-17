#ifndef TENSOR_H
#define TENSOR_H

#include <stdio.h>
#include <stdint.h>

typedef enum
{
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

typedef struct
{
    float scale[1];
    int64_t zero_point[1];
} __attribute__((__packed__)) QuantizationParameters_0;

typedef struct
{
    TensorType type;
    char pad[3];
    int32_t shape[2];
    uint32_t buffer;
    QuantizationParameters_0 quantization;
} __attribute__((__packed__)) Tensor_0;

typedef struct
{
    float scale[1];
    int64_t zero_point[1];
} __attribute__((__packed__)) QuantizationParameters_1;

typedef struct
{
    TensorType type;
    char pad[3];
    int32_t shape[1];
    uint32_t buffer;
    QuantizationParameters_1 quantization;
} __attribute__((__packed__)) Tensor_1;

typedef struct
{
    float scale[1];
    int64_t zero_point[1];
} __attribute__((__packed__)) QuantizationParameters_2;

typedef struct
{
    TensorType type;
    char pad[3];
    int32_t shape[2];
    uint32_t buffer;
    QuantizationParameters_2 quantization;
} __attribute__((__packed__)) Tensor_2;

typedef struct
{
    float scale[1];
    int64_t zero_point[1];
} __attribute__((__packed__)) QuantizationParameters_3;

typedef struct
{
    TensorType type;
    char pad[3];
    int32_t shape[1];
    uint32_t buffer;
    QuantizationParameters_3 quantization;
} __attribute__((__packed__)) Tensor_3;

typedef struct
{
    float scale[1];
    int64_t zero_point[1];
} __attribute__((__packed__)) QuantizationParameters_4;

typedef struct
{
    TensorType type;
    char pad[3];
    int32_t shape[2];
    uint32_t buffer;
    QuantizationParameters_4 quantization;
} __attribute__((__packed__)) Tensor_4;

typedef struct
{
    float scale[1];
    int64_t zero_point[1];
} __attribute__((__packed__)) QuantizationParameters_5;

typedef struct
{
    TensorType type;
    char pad[3];
    int32_t shape[1];
    uint32_t buffer;
    QuantizationParameters_5 quantization;
} __attribute__((__packed__)) Tensor_5;

typedef struct
{
    float scale[1];
    int64_t zero_point[1];
} __attribute__((__packed__)) QuantizationParameters_6;

typedef struct
{
    TensorType type;
    char pad[3];
    int32_t shape[2];
    uint32_t buffer;
    QuantizationParameters_6 quantization;
} __attribute__((__packed__)) Tensor_6;

typedef struct
{
    float scale[1];
    int64_t zero_point[1];
} __attribute__((__packed__)) QuantizationParameters_7;

typedef struct
{
    TensorType type;
    char pad[3];
    int32_t shape[2];
    uint32_t buffer;
    QuantizationParameters_7 quantization;
} __attribute__((__packed__)) Tensor_7;

typedef struct
{
    float scale[1];
    int64_t zero_point[1];
} __attribute__((__packed__)) QuantizationParameters_8;

typedef struct
{
    TensorType type;
    char pad[3];
    int32_t shape[2];
    uint32_t buffer;
    QuantizationParameters_8 quantization;
} __attribute__((__packed__)) Tensor_8;

typedef struct
{
    float scale[1];
    int64_t zero_point[1];
} __attribute__((__packed__)) QuantizationParameters_9;

typedef struct
{
    TensorType type;
    char pad[3];
    int32_t shape[2];
    uint32_t buffer;
    QuantizationParameters_9 quantization;
} __attribute__((__packed__)) Tensor_9;

typedef struct
{
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

#endif // TENSOR_H
