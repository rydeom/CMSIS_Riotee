#include <stdio.h>
#include <stdint.h>
#include "tensor.h"
#include "printf.h"

uint8_t *get_tensor(Tensors *tensors, int index){
    uint32_t sizes[10] = {0,
sizeof(tensors->tensor_0),
sizeof(tensors->tensor_1) + sizeof(tensors->tensor_0),
sizeof(tensors->tensor_2) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1),
sizeof(tensors->tensor_3) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2),
sizeof(tensors->tensor_4) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3),
sizeof(tensors->tensor_5) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4),
sizeof(tensors->tensor_6) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5),
sizeof(tensors->tensor_7) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6),
sizeof(tensors->tensor_8) + sizeof(tensors->tensor_0) + sizeof(tensors->tensor_1) + sizeof(tensors->tensor_2) + sizeof(tensors->tensor_3) + sizeof(tensors->tensor_4) + sizeof(tensors->tensor_5) + sizeof(tensors->tensor_6) + sizeof(tensors->tensor_7)};
    return (uint8_t *)tensors + sizes[index];
}

void print_tensor_pointer(Tensors *tensors){
    printf("Tensor 0 type: %d, buffer: %d\r\n", ((Tensor_0 *)get_tensor(tensors, 0))->type, ((Tensor_0 *)get_tensor(tensors, 0))->buffer);
    printf("Tensor 0 shape: \r\n", 0);
    printf("%d ", ((Tensor_0 *)get_tensor(tensors, 0))->shape[0]);
    printf("%d ", ((Tensor_0 *)get_tensor(tensors, 0))->shape[1]);
    printf("\r\n");
    printf("Tensor 1 type: %d, buffer: %d\r\n", ((Tensor_1 *)get_tensor(tensors, 1))->type, ((Tensor_1 *)get_tensor(tensors, 1))->buffer);
    printf("Tensor 1 shape: \r\n", 1);
    printf("%d ", ((Tensor_1 *)get_tensor(tensors, 1))->shape[0]);
    printf("\r\n");
    printf("Tensor 2 type: %d, buffer: %d\r\n", ((Tensor_2 *)get_tensor(tensors, 2))->type, ((Tensor_2 *)get_tensor(tensors, 2))->buffer);
    printf("Tensor 2 shape: \r\n", 2);
    printf("%d ", ((Tensor_2 *)get_tensor(tensors, 2))->shape[0]);
    printf("%d ", ((Tensor_2 *)get_tensor(tensors, 2))->shape[1]);
    printf("\r\n");
    printf("Tensor 3 type: %d, buffer: %d\r\n", ((Tensor_3 *)get_tensor(tensors, 3))->type, ((Tensor_3 *)get_tensor(tensors, 3))->buffer);
    printf("Tensor 3 shape: \r\n", 3);
    printf("%d ", ((Tensor_3 *)get_tensor(tensors, 3))->shape[0]);
    printf("\r\n");
    printf("Tensor 4 type: %d, buffer: %d\r\n", ((Tensor_4 *)get_tensor(tensors, 4))->type, ((Tensor_4 *)get_tensor(tensors, 4))->buffer);
    printf("Tensor 4 shape: \r\n", 4);
    printf("%d ", ((Tensor_4 *)get_tensor(tensors, 4))->shape[0]);
    printf("%d ", ((Tensor_4 *)get_tensor(tensors, 4))->shape[1]);
    printf("\r\n");
    printf("Tensor 5 type: %d, buffer: %d\r\n", ((Tensor_5 *)get_tensor(tensors, 5))->type, ((Tensor_5 *)get_tensor(tensors, 5))->buffer);
    printf("Tensor 5 shape: \r\n", 5);
    printf("%d ", ((Tensor_5 *)get_tensor(tensors, 5))->shape[0]);
    printf("\r\n");
    printf("Tensor 6 type: %d, buffer: %d\r\n", ((Tensor_6 *)get_tensor(tensors, 6))->type, ((Tensor_6 *)get_tensor(tensors, 6))->buffer);
    printf("Tensor 6 shape: \r\n", 6);
    printf("%d ", ((Tensor_6 *)get_tensor(tensors, 6))->shape[0]);
    printf("%d ", ((Tensor_6 *)get_tensor(tensors, 6))->shape[1]);
    printf("\r\n");
    printf("Tensor 7 type: %d, buffer: %d\r\n", ((Tensor_7 *)get_tensor(tensors, 7))->type, ((Tensor_7 *)get_tensor(tensors, 7))->buffer);
    printf("Tensor 7 shape: \r\n", 7);
    printf("%d ", ((Tensor_7 *)get_tensor(tensors, 7))->shape[0]);
    printf("%d ", ((Tensor_7 *)get_tensor(tensors, 7))->shape[1]);
    printf("\r\n");
    printf("Tensor 8 type: %d, buffer: %d\r\n", ((Tensor_8 *)get_tensor(tensors, 8))->type, ((Tensor_8 *)get_tensor(tensors, 8))->buffer);
    printf("Tensor 8 shape: \r\n", 8);
    printf("%d ", ((Tensor_8 *)get_tensor(tensors, 8))->shape[0]);
    printf("%d ", ((Tensor_8 *)get_tensor(tensors, 8))->shape[1]);
    printf("\r\n");
    printf("Tensor 9 type: %d, buffer: %d\r\n", ((Tensor_9 *)get_tensor(tensors, 9))->type, ((Tensor_9 *)get_tensor(tensors, 9))->buffer);
    printf("Tensor 9 shape: \r\n", 9);
    printf("%d ", ((Tensor_9 *)get_tensor(tensors, 9))->shape[0]);
    printf("%d ", ((Tensor_9 *)get_tensor(tensors, 9))->shape[1]);
    printf("\r\n");
}

