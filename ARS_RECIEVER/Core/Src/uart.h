/*
 * File:		uart.c
 * @brief      	Header file that has the declarations of the UART functions.
 * Created on: 	Dec 11, 2023
 * Author: 		Akash Karoshi and Sai Charan Mandadi
 */

#ifndef UART_H
#define UART_H

/**
 * @brief      Initializes USART2 for communication.
 *
 * @details    Configures GPIOA and USART2, sets the baud rate, and enables
 *             transmitter and receiver.
 */
 void USART1_init(void);

/**
 * @brief      Function to print an array of characters on the terminal using USART23.
 *
 * @param[in]  s  Pointer to the character array.
 *
 * @return     The number of characters printed (excluding the null terminator).
 */
int putstr(char *s);

/**
 * @brief      Writes a character to USART2.
 *
 * @param[in]  ch    The character to be transmitted.
 *
 * @return     The transmitted character.
 */
int USART1_write(int ch);
#endif
