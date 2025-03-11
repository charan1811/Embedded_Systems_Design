/*
 * Systick.h
 *
 *  Created on: Nov 17, 2023
 *      Author: Sai charan mandadi
 */

#ifndef SRC_SYSTICK_H_
#define SRC_SYSTICK_H_

#include "stm32f4xx.h"
#include "system_stm32f4xx.h"

static volatile uint32_t tDelay;
extern uint32_t SystemCoreClock;

// Function: init_systick
// Parameters: uint32_t - System ticks per millisecond.
// Description: Initializes the SysTick timer with the specified number of system ticks per millisecond.
void init_systick(uint32_t s);

// Function: delay_ms
// Parameters: uint32_t - Delay duration in milliseconds.
// Description: Delays the program for the specified number of milliseconds using the SysTick timer.
void delay_ms(uint32_t);

#endif /* SRC_SYSTICK_H_ */
