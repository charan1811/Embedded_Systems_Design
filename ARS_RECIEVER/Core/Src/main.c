/*
 * File: 		main.c
 *
 * author: 		Akash Karoshi and Sai Charan Mandadi
 * description:	main has initialization sequence for the RESCUE SYSTEM. It also runs the main
 * 				control loop where the state machine keeps executing.
 */

#include "stm32f4xx.h"
#include "system_stm32f4xx.h"
#include "uart.h"
#include "rfcom.h"
#include "led.h"
#include "rescue.h"
#include "spi.h"

/*
 * File: 		main.c
 *
 * author: 		Akash Karoshi and Sai Charan Mandadi
 * description:	main has initialization sequence for the RESCUE SYSTEM. It also runs the main
 * 				control loop where the state machine keeps executing.
 */
int main(void)
{
    char* payload = '0';

    // Initialize USART23, SPI, NRF, LED, and display
    USART1_init();
    putstr("RESCUE SYSTEM INITIALIZING!!\n\r");
    spi2_init();
    spi1_enable();
    nrf_prx_init();
    led_init();
    putstr("RESCUE SYSTEM INITIALIZING!!\n\r");

    while(1)
    {
    	//Receives the accident alert status and keeps the track of it
        char alert_status = nrf_rf_rx(payload);

        //perform rescue using the alert status received through rf
        rescue_response(alert_status);
    }
    return 0;
}
