/*
 * 	File: 		led.h
 *	@brief      Header file that contains all the interface declerations to communicate with
 *				MAX7219 LED matrix.
 *  Created on: Dec 10, 2023
 *  Author: 	Akash Karoshi and Sai Charan Mandadi
 */

#ifndef SRC_LED_H_
#define SRC_LED_H_

#include <stdbool.h>
#include "stm32f4xx.h"
#include "system_stm32f4xx.h"

/**
 * @brief      Function to initialize the LED matrix.
 *
 * @param[in]  void
 *
 * @return     void
 */
void led_init(void);

/**
 * @brief      Function to set the status of a specific LED on the MAX7219 matrix.
 *
 * @param[in]  row     The row of the LED (0 to 7).
 * @param[in]  column  The column of the LED (0 to 7).
 * @param[in]  status  The status of the LED (ON or OFF).
 *
 * @return     void
 */
void MAX7219SetLED(uint8_t row, uint8_t column, bool status);

/**
 * @brief      Function to set the default LED matrix map.
 *
 * @param[in]  void
 *
 * @return     void
 */
void setdefaultMAP();

/**
 * @brief      Function to introduce a delay in milliseconds.
 *
 * @param[in]  cnt_ms  The delay duration in milliseconds.
 *
 * @return     void
 */
void delay_ms(int cnt_ms);

/**
 * @brief      Function to clear the entire LED matrix display.
 *
 * @param[in]  void
 *
 * @return     void
 */
void cleardisplay();

#endif /* SRC_LED_H_ */
