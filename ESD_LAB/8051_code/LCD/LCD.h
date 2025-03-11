#ifndef LCD_H_
#define LCD_H_

/**
 * LCD.h - Header to Handle the LCD commands
 *
 *
 * @author  SAI CHARAN MANDADI
 * @date    NOV-14-2023
 *
 */

#include <at89c51ed2.h>
#include <mcs51/8051.h>
#include <stdint.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <mcs51reg.h>
#include <math.h>

#define ONE_MS 82
#define LCD_CMD 0x8000
#define RS P1_0
#define RW P1_2
#define ENDOFLINE 0X0D

volatile uint8_t __at(0x8000) lcd_ptr; //initializing the variabble of lcd pointer

// Function: delay
// Parameters: int ms - Time to delay in milliseconds
// Description: Delays execution for the specified time in milliseconds
void delay(int ms);

// Function: lcdbusywait
// Description: Waits for the LCD to become non-busy
void lcdbusywait(void);

// Function: lcdinit
// Description: Initializes the LCD
void lcdinit(void);

// Function: lcdgotoaddr
// Parameters: unsigned char - Address to set the LCD cursor to
// Description: Sets the LCD cursor to the specified address
void lcdgotoaddr(unsigned char);

// Function: lcdgotoxy
// Parameters: uint16_t - Row, uint16_t - Column
// Description: Sets the LCD cursor to the specified position (row, column)
void lcdgotoxy(uint16_t, uint16_t);

// Function: get_cursor_address
// Description: Gets the cursor address from the LCD
uint8_t get_cursor_address();

// Function: lcdputch
// Parameters: char - Character to write
// Description: Writes a character to the LCD display
void lcdputch(char);

// Function: lcdputstr
// Parameters: char* - String to write
// Description: Writes a string to the LCD display
void lcdputstr(char *);

// Function: lcdclear
// Description: Clears the LCD display
void lcdclear(void);

// Function: cgram_dump
// Description: Dumps the content of the LCD CGRAM (Character Generator RAM)
void cgram_dump();

// Function: hex_dump
// Description: Displays a hexadecimal dump of the LCD memory
void hex_dump();

// Function: create_custom_char
// Parameters: char - Character code, uint16_t* - Array representing the custom character
// Description: Creates a custom character on the LCD
void create_custom_char(char, uint16_t*);

// Function: ascii_to_int
// Parameters: char* - Character array
// Description: Converts a character array to an integer
uint16_t ascii_to_int(char *);

// Function: get_input
// Parameters: char* - Character array to store user input
// Description: Gets input from the user and stores it in a character array
void get_input(char*);

#endif
