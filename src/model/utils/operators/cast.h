#ifndef CAST_H
#define CAST_H

#include <stdint.h>

void copyCastUint32ToInt32(uint32_t *src, int32_t *dst, int size);
void copyCastInt32ToUint32(int32_t *src, uint32_t *dst, int size);

#endif // CAST_H