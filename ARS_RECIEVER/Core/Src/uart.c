/*
 * File:		uart.c
 * @brief      	Implementation of functions that Initializes and handles
 * 				all the operations related to UART.
 * Created on: 	Dec 11, 2023
 * Author:		Akash Karoshi and Sai Charan Mandadi
 */

#include "stm32f4xx.h"
#include "stdio.h"
#include "stdio.h"
#include "uart.h"

//USART2 for portA pin 15
#define USART2_POS (0x20000)
//Enable Pin 2 and 3 of port A to alternate function
#define PA_ALT_POS (0x7700)
//moder for PA2 and PA3
#define PA_MODER (0x00A0)
//baud rate for usart 9600kh
#define USART_BAUD_RATE (0x0683)
//UE: USART enable UE bit 13 in CR1
#define USRT_ENABLE (0x2000)
// bit is set by hardware when the content of the TDR register has been transferred into the shift register.
#define UART_TXE (7)
//tx and rx enable
#define UART_TXE_RXE (0x000C)


 /**
  * @brief      Writes a character to USART2.
  *
  * @param[in]  ch    The character to be transmitted.
  *
  * @return     The transmitted character.
  */
 int USART1_write(int ch)
 {
 	// Wait for Tx Buffer empty
	while (!(USART2->SR & (1<<UART_TXE))) {}
 	USART2->DR = (ch & 0xFF);
 	return ch;
 }

/**
 * @brief      Function to print an array of characters on the terminal using USART23.
 *
 * @param[in]  s  Pointer to the character array.
 *
 * @return     The number of characters printed (excluding the null terminator).
 */
int putstr(char *s)
{
    int i = 0;

    // Loop through the entire character array
    while (*s)
    {
    	USART1_write(*s++);
        i++;
    }

    return i;
}

/**
 * @brief      Initializes USART2 for communication.
 *
 * @details    Configures GPIOA and USART2, sets the baud rate, and enables
 *             transmitter and receiver.
 */
 void USART1_init(void)
 {
	// Enable GPIOA Clock
  	RCC->AHB1ENR |= 1;
  	// Enable USART2 Clock
  	RCC->APB1ENR |= USART2_POS;

  	// Configure PA3 as USART RX
  	GPIOA->AFR[0] |= PA_ALT_POS; // Alt7 for USART2
  	// Enable Alternate function for PA2 and PA3
  	GPIOA->MODER |= PA_MODER;

  	// 9600 baudrate @16Mhz
  	USART2->BRR = USART_BAUD_RATE;
  	// Set 4th bit high to enable Tx and 8th high to enable Rx
  	USART2->CR1 |= UART_TXE_RXE;
  	// Enables USART2
  	USART2->CR1 |= USRT_ENABLE;
 }

 /**
  * @brief      Error handling function.
  *
  * @note       This function is executed in case of an error occurrence.
  *
  * @retval     None
  */
 void Error_Handler(void)
 {
	 // Disable interrupts
     __disable_irq();
     while (1)
     {
         // Infinite loop, indicating an error state
     }
 }
