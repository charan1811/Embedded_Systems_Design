/*
 * timer_wdog.c
 * @brief          : Initializes the watchdog peripheral and handles the delay, interrupt
 * Service routines
 *  Created on: Nov 16, 2023
 *  Author: Sai Charan Mandadi
 */

#include "timer_wdog.h"


/* Function: WWDG_IRQHandler
* Parameters: Void
*  Description: Calls upon the timer of watchdog falls below the window value.
*  */
void WWDG_IRQHandler(void)
{
	//intentionally left empty
}

/* Function: run_wdog_loop
* Parameters: Void
*  Description: Runs a loop to demonstrate the watchdog timer functionality.
*  */
void run_wdog_loop()
{
    // blink an LED ten times to show the operation
    // reset watchdog every time
    for (int i=0; i<20; i++){
        GPIOD->ODR ^= 0x8000;  // Toggle blue LED
        // since watchdog timer is set to a max of 24.9 ms
        // 100k comes up to around 6 ms wait time, so should be fine
        // and add repeat this 10 times to see the led blinking
        for (int j=0; j<10; j++){
            // wait for some time
        	delay(100000);
            // feed the dog
            WWDG->CR |= (0x7F); // refresh the T bits contents
        }
    }

    // here watchdog will kick in and reset the board
    // because it is not fed anymore
    while(1)
    {
    	delay(1000);
        GPIOD->ODR ^= 0x1000;  // Toggle green LED
    }
}

/* Function: init_wdog_timer
* Parameters: Void
* Description: Initializes the watchdog timer.
* */
void init_wdog_timer()
{
    /* set up Window Watchdog (WWDG) */

    // enable window watchdog clock from RCC (bit 11 on APB1ENR)
    RCC->APB1ENR |= (1 << 11);

    // WDGTB[1:] - timer base (bits 8:7)
    WWDG->CFR |= (0x2 << 7);

    // W[6:0] - window value (bits 6:0)
    // can reset watchdog after counter reaches down to 0x70
    WWDG->CFR |= (0x70);

    // Enable WDGA (bit 7 - activation bit) and
    //   set counter to 7F to start watchdog
    WWDG->CR |= (0xFF);

    run_wdog_loop();
}

/* Function: delay
* Parameters: volatile uint32_t - Time to delay in a loop (used for demo purposes).
* Description: Delays the program for the specified duration using a busy-wait loop.
* */
void delay(volatile uint32_t time)
{
    while(time-- > 0);
}
