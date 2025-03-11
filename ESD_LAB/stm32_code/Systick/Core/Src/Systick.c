/*
 * Systick.c
 *
 *  Created on: Nov 17, 2023
 *      Author: Sai charan mandadi
 */
#include "Systick.h"

// Function: init_systick
// Parameters: uint32_t - System ticks per millisecond.
// Description: Initializes the SysTick timer with the specified number of system ticks per millisecond.
void init_systick(uint32_t s)
{
    // Clear CTRL register
    SysTick->CTRL = 0x00000;
    // Main clock source is running with HSI by default which is at 8 Mhz.
    // SysTick clock source can be set with CTRL register (Bit 2)
    // 0: Processor clock/8 (AHB/8)
    // 1: Processor clock (AHB)
    SysTick->CTRL |= (1 << 2);
    // Enable callback (bit 1)
    SysTick->CTRL |= (1 << 1);
    // Load the value
    SysTick->LOAD = (uint32_t)(s-1);
    // Set the current value to 0
    SysTick->VAL = 0;
    // Enable SysTick (bit 0)
    SysTick->CTRL |= (1 << 0);
}

// Function: SysTick_Handler
// Parameters: Void.
// Description: Systick handler causes delay for the LED blink
void SysTick_Handler(void)
{
    if (tDelay != 0)
    {
    	//down count the delay
        tDelay--;
    }
}

// Function: delay_ms
// Parameters: uint32_t - Delay duration in milliseconds.
// Description: Delays the program for the specified number of milliseconds using the SysTick timer.
void delay_ms(uint32_t s)
{
    tDelay = s;
    while(tDelay != 0);
}
