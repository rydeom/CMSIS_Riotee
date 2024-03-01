
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

#define PIN_MICROPHONE_DISABLE PIN_D5

void startup_callback(void)
{
    /* Call this early to put SHTC3 into low power mode */
    // shtc3_init();
    /* Disable microphone to reduce current consumption. */
    riotee_gpio_cfg_output(PIN_MICROPHONE_DISABLE);
    riotee_gpio_set(PIN_MICROPHONE_DISABLE);
}

/* This gets called after every reset */
void reset_callback(void)
{
    riotee_gpio_cfg_output(PIN_LED_CTRL);
    riotee_uart_init(PIN_D1, RIOTEE_UART_BAUDRATE_115200);
    /* Required for VM1010 */
    riotee_adc_init();

    vm1010_cfg_t cfg = {.pin_vout = PIN_D2, .pin_vbias = PIN_D3, .pin_mode = PIN_D10, .pin_dout = PIN_D4};
    vm1010_init(&cfg);
    // Model *model;
    // model = ((Model *)model_data_raw);
    // print_model_pointer(model);
    // print_buffer_pointer(&model->buffers);
    // print_tensor_pointer(&model->tensors);
}

/* This gets called when capacitor voltage gets low */
void turnoff_callback(void)
{
    riotee_gpio_clear(PIN_LED_CTRL);
    /* Disable the microphone */
    riotee_gpio_set(PIN_MICROPHONE_DISABLE);
    vm1010_exit();
}
int16_t samples[1000];

int main(void)
{
    run_model(0.77f);
    int rc;
    int cool = 0;
    cool = 1;
    cool = cool + 1;
    cool = cool * 2;

    for (;;)
    {
        // printf("Starting up\r\n");

        continue;
        // riotee_wait_cap_charged();

        /* Switch on microphone */
        riotee_gpio_clear(PIN_MICROPHONE_DISABLE);
        /* Wait for 2ms for V_BIAS to come up */
        riotee_sleep_ticks(70);

        /* Wait for wake-on-sound signal from microphone */
        if ((rc = vm1010_wait4sound()) != RIOTEE_SUCCESS)
        {
            printf("Error while waiting for sound: %d", rc);
            riotee_gpio_set(PIN_MICROPHONE_DISABLE);
            continue;
        }
        /* Wait until microphone can be sampled (see VM1010 datasheet)*/
        riotee_sleep_ticks(5);
        // printf("Sampling..");
        rc = vm1010_sample(samples, 1000, 4);
        /* Disable the microphone */
        riotee_gpio_set(PIN_MICROPHONE_DISABLE);
        if (rc != RIOTEE_SUCCESS)
        {
            printf("Error during sampling: %d", rc);
        }
        printf("UU");
        // Print samples to UART
        for (int i = 0; i < 1000; i++)
        {
            if (samples[i] < -1600)
            {
                continue;
            }
            riotee_putc((uint8_t)(0x00FF & samples[i]));
            riotee_putc((uint8_t)(samples[i] >> 8));
            // printf("%d", samples[i]);
        }
    }
}
