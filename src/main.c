
#include "riotee.h"
#include "riotee_gpio.h"
#include "riotee_timing.h"
#include "riotee_adc.h"
#include "riotee_uart.h"
#include "printf.h"

#include "shtc3.h"
#include "vm1010.h"

#include "model/model.h"
#include "operator.h"

#include "run_model.h"
#include <math.h>

/* This gets called after every reset */
void reset_callback(void)
{
    riotee_uart_init(PIN_D1, RIOTEE_UART_BAUDRATE_115200);
}

int main(void)
{
    riotee_wait_cap_charged();
    for (;;)
    {
        run_model(0.8f);
        riotee_sleep_ms(500);
    }
}
