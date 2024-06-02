#ifndef CAST_H
#define CAST_H

#include <stdint.h>

void copyCastUint32ToInt32(uint32_t *src, int32_t *dst, int size);
void copyCastInt32ToUint32(int32_t *src, uint32_t *dst, int size);
void copyCastInt16ToInt32(int16_t *src, int32_t *dst, int size);
void copyCastInt32ToInt8(int32_t *src, int8_t *dst, int size);

#endif // CAST_H