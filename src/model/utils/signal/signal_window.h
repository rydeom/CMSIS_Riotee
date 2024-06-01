#ifndef SIGNAL_WINDOW_H
#define SIGNAL_WINDOW_H

#include <stdint.h>

typedef struct SignalWindowParams
{
    int32_t input_size;
    int32_t shift;
    int32_t weight_size;
    uint8_t *input;
    uint8_t *weights;
    uint8_t *output;
} SignalWindowParams;

void signal_apply_window(SignalWindowParams *params);
void apply_window(const int16_t *input, const int16_t *window, int size,
                  int shift, int16_t *output);

#endif // SIGNAL_WINDOW_H