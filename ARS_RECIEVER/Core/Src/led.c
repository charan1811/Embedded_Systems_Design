/*
 * 	File: 		led.c
 *	@brief      Implementation of LED interfaces to command and receive data from the LED
 *				matrix using SPI communication.
 *  Created on: Dec 10, 2023
 *  Author: 	Akash Karoshi and Sai Charan Mandadi
 */

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "stm32f4xx.h"
#include "system_stm32f4xx.h"
#include <stdbool.h>
#include "spi.h"

/**
 * @brief      Function to introduce a delay in milliseconds.
 *
 * @param[in]  cnt_ms  The delay duration in milliseconds.
 *
 * @return     void
 */
void delay_ms(int cnt_ms)
{
    for (volatile int i = 0; i < (10000 * cnt_ms); ++i);
}

/**
 * @brief      Function to send a byte to MAX7219.
 *
 * @param[in]  address  The address byte.
 * @param[in]  data     The data byte.
 *
 * @return     void
 */
void MAX7219SendByte(uint8_t address, uint8_t data)
{
    // Set CS low (activate the MAX7219)
    spi2_csn_LOW();

    // Send the address byte
    while (!(SPI1->SR & SPI_SR_TXE));  // Wait until the transmit buffer is empty
    SPI1->DR = address;

    // Wait until the transmit is complete
    while (SPI1->SR & SPI_SR_BSY);

    // Send the data byte
    while (!(SPI1->SR & SPI_SR_TXE));  // Wait until the transmit buffer is empty
    SPI1->DR = data;

    // Wait until the transmit is complete
    while (SPI1->SR & SPI_SR_BSY);

    // Set CS high (deactivate the MAX7219)
    spi2_csn_HIGH();
}

/**
 * @brief      Function to set the status of a specific LED on the MAX7219 matrix.
 *
 * @param[in]  row     The row of the LED (0 to 7).
 * @param[in]  column  The column of the LED (0 to 7).
 * @param[in]  status  The status of the LED (ON or OFF).
 *
 * @return     void
 */
void MAX7219SetLED(uint8_t row, uint8_t column, bool status)
{
    uint8_t shift = 1;
    if (status == 0)
    {
        column = 0;
        shift = 0;
    }
    else if (column == 0)
    {
        shift = 1;
    }
    else if (column != 0)
    {
        shift = 0;
    }

    // MAX7219 has 8 rows and 8 columns
    if (row < 256 && column < 256)
    {
        // Calculate the corresponding data byte for the specified LED
    	//Address starts from 1
        MAX7219SendByte(row + 1, column | shift);
    }
}

/**
 * @brief      Function to set the default LED matrix map.
 *
 * @param[in]  void
 *
 * @return     void
 */
void setdefaultMAP()
{
	// Send default column 0 address of LED map
    MAX7219SetLED(0x00, 0x81, 1);
    for (volatile int i = 0; i < 10000; ++i);

    // Send default column 7 address of LED map
    MAX7219SetLED(0x07, 0x81, 1);
    for (volatile int i = 0; i < 10000; ++i);

    //clear all the other LED columns
    for (int i = 1; i < 7; i++)
    {
        MAX7219SetLED(i, 0x00, 0);
    }
}

/**
 * @brief      Function to initialize the MAX7219 LED matrix.
 *
 * @param[in]  void
 *
 * @return     void
 */
void START_LED()
{
    // MAX7219 initialization sequence
	// Turn off display during setup
    MAX7219SendByte(0x0F, 0x00);
    // Decode mode: no decoding
    MAX7219SendByte(0x09, 0x00);
    // Intensity: 4/16 (adjust as needed)
    MAX7219SendByte(0x0A, 0x0F);
    // Scan limit: 8 digits
    MAX7219SendByte(0x0B, 0x07);
    // Normal operation mode
    MAX7219SendByte(0x0C, 0x01);
}

/**
 * @brief      Function to clear the entire LED matrix display.
 *
 * @param[in]  void
 *
 * @return     void
 */
void cleardisplay()
{
    for (int i = 0; i < 9; i++)
    {
    	//clear all the columns and rows
        MAX7219SetLED(i, 0, 0);
        for (volatile int i = 0; i < 10000; ++i);
    }
}

/**
 * @brief      Function to initialize the LED matrix.
 *
 * @param[in]  void
 *
 * @return     void
 */
void led_init(void)
{
	// Initialize SPI2 communication
    spi1_init();
    // Enable SPI2
    spi2_enable();
    // Activate LED display
    START_LED();
    // Clear the LED display
    cleardisplay();
}
