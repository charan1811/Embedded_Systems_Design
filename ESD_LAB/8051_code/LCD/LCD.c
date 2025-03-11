/**
 * LCD.C - Header that handles all the LCD commands
 *
 *
 * @author  SAI CHARAN MANDADI
 * @date    NOV-14-2023
 *
 */

#include "LCD.h"

// Function: delay
// Parameters: int - Time to delay in milliseconds
// Description: Delays execution for the specified time in milliseconds
void delay(int ms)
{
    for(int j=0;j<ms;j++)
    {
        for(int i=0;i<ONE_MS;i++);
    }
}

// Function: lcdbusywait
// Description: Waits for the LCD to become non-busy by polling on Busy flag
void lcdbusywait(void)
{
    // Read busy flag (DB7) and address counter (DB0 to DB6)
    RS=0;
    RW=1;
    // Poll for BF=0
    while(lcd_ptr&0x80);
}

// Function: lcdinit
// Description: Initializes the LCD module with the specified sequence of commands.
// Parameters: None
// Return: void
void lcdinit(void)
{
    delay(60);
    // IR write as an internal operation (display clear, etc.)
    RS=0;
    RW=0;
    // Wait for more than 15ms
    // Unlock Command
    lcd_ptr=0x30;
    // Wait for more than 4.1ms
    delay(15);
    // Unlock Command
    lcd_ptr=0x30;
    // Wait for more than 100us
    delay(1);
    // Unlock Command
    lcd_ptr=0x30;
    // Poll for BF=0
    lcdbusywait();
    // IR write as an internal operation (display clear, etc.)
    RS=0;
    RW=0;
    // Function Set Command: Note N=1, F=0 for DMC20480
    lcd_ptr=0x38;
    // Poll for BF=0
    lcdbusywait();
    // IR write as an internal operation (display clear, etc.)
    RS=0;
    RW=0;
    // Turn the display OFF
    lcd_ptr=0x08;
    // Poll for BF=0
    lcdbusywait();
    // IR write as an internal operation (display clear, etc.)
    RS=0;
    RW=0;
    // Turn the display on and cursor on and blinking on
    lcd_ptr=0x0F;
    // Poll for BF=0
    lcdbusywait();
    // IR write as an internal operation (display clear, etc.)
    RS=0;
    RW=0;
    // Entry mode set command
    lcd_ptr=0x06;
    // Poll for BF=0
    lcdbusywait();
    // IR write as an internal operation (display clear, etc.)
    RS=0;
    RW=0;
    // Clear screen and send the cursor home.
    lcd_ptr=0x01;
    // Poll for BF=0
    lcdbusywait();
}

// Function: lcdgotoaddr
// Description: Sets the address of the LCD display.
// Parameters:
//   addr - The address to set for the LCD display.
// Return: void
void lcdgotoaddr(unsigned char addr)
{
    // IR write as an internal operation (display clear, etc.)
    RS = 0;
    RW = 0;
    // Set DDRAM Address
    addr |= 0x80;
    // send command
    lcd_ptr = addr;
    // Poll for BF=0
    lcdbusywait();
}

// Function: lcdgotoxy
// Parameters: uint16_t x - x-coordinate
//             uint16_t y - y-coordinate
// Description: Sets the cursor position on an LCD display based on the specified x and y coordinates.
//              The LCD display is organized as a 2x40 character display.
//              The function calculates the address based on the given coordinates and calls lcdgotoaddr.
//              After setting the cursor position, it waits for the LCD to become non-busy.

void lcdgotoxy(uint16_t x, uint16_t y)
{
    uint16_t addr = 0;  // Initialize the address variable to zero

    // Determine the address based on the x-coordinate
    if (x == 0)
    {
        x = 0x00;
        addr = x | y;
    }
    else if (x == 1)
    {
        x = 0x40;
        addr = x | y;
    }
    else if (x == 2)
    {
        x = 0x10;
        addr = x | y;
    }
    else if (x == 3)
    {
        x = 0x50;
        addr = x | y;
    }

    // Call lcdgotoaddr with the calculated address
    lcdgotoaddr(addr);

    // Wait for the LCD to become non-busy
    lcdbusywait();
}

// Function: get_cursor_address
// Description: Retrieves the cursor address from an LCD display. The function
//              sets the Read/Write (RW) control signal to read mode (RW=1),
//              sets the Register Select (RS) control signal to command mode (RS=0),
//              and returns the cursor address obtained from the lcd_ptr variable
//              after clearing the most significant bit (0x80) using bitwise AND.
// Return: uint8_t - Cursor address from the LCD display.

uint8_t get_cursor_address()
{
    RS = 0;        // Set RS to 0 for command mode
    RW = 1;        // Set RW to 1 for read mode
    return lcd_ptr & (~0x80);  // Return the cursor address with the most significant bit cleared
}

// Function: lcdputch
// Parameters: char c - Character to be displayed on the LCD
// Description: Writes a character to the LCD display at the current cursor position or specific positions based on the cursor address.
//              The function first checks if the character is the backspace character (127) and returns if true.
//              Then, it checks the current cursor address and performs actions accordingly:
//              - If the cursor is at the position 1,15 (0x0F), the character is written, and the cursor is moved to position 1,0.
//              - If the cursor is at the position 2,15 (0x4F), the character is written, and the cursor is moved to position 2,0.
//              - If the cursor is at the position 3,15 (0x1F), the character is written, and the cursor is moved to position 3,0.
//              - If the cursor is at the position 0,24 (0x58), the character is written, and the cursor is moved to position 0,0.
//              - If none of the above conditions match, the character is written at the current cursor location.
// Return: None

void lcdputch(char c)
{
    // Check if the character is the backspace character
    if (c == 127)
    {
        return;
    }

    // Check the current cursor address and perform actions accordingly
    if (get_cursor_address() == 0x0F)
    {
        // Data Register write
        RS = 1;
        RW = 0;
        // Send command
        lcd_ptr = c;
        // Poll for BF
        lcdbusywait();
        // Print it on LCD position 1,0
        lcdgotoxy(1, 0);
    }
    else if (get_cursor_address() == 0x4F)
    {
        // Data Register write
        RS = 1;
        RW = 0;
        // Send command
        lcd_ptr = c;
        // Poll for BF
        lcdbusywait();
        // Print it on LCD position 2,0
        lcdgotoxy(2, 0);
    }
    else if (get_cursor_address() == 0x1F)
    {
        // Data Register write
        RS = 1;
        RW = 0;
        // Send command
        lcd_ptr = c;
        // Poll for BF
        lcdbusywait();
        // Print it on LCD position 3,0
        lcdgotoxy(3, 0);
    }
    else if (get_cursor_address() == 0x58)
    {
        // Data Register write
        RS = 1;
        RW = 0;
        // Send command
        lcd_ptr = c;
        // Poll for BF=0
        lcdbusywait();
        // Print it on LCD position 0,0 because the cursor has reached the last location
        lcdgotoxy(0, 0);
    }
    // Write to the current location
    else
    {
        // Data Register write
        RS = 1;
        RW = 0;
        // Send command
        lcd_ptr = c;
        // Poll for BF=0
        lcdbusywait();
    }
}


// Function: lcdputstr
// Parameters: char *ss - Pointer to a null-terminated string to be displayed on the LCD
// Description: Writes a string to the LCD display by iterating through each character in the string
//              and calling the lcdputch function for each character until a null character ('\0') is encountered.
// Return: None

void lcdputstr(char *ss)
{
    int i = 0;

    // Iterate through each character in the string until a null character is encountered
    while (ss[i] != '\0')
    {
        // Write the current character to the LCD using lcdputch function
        lcdputch(ss[i]);
        i++;
    }
}


// Function: lcdclear
// Description: Clears the entire display of the LCD by writing to the Instruction Register (IR)
//              as an internal operation. It sets the Read/Write (RW) and Register Select (RS) control signals to 0,
//              writes the command 0x01 to the lcd_ptr variable, which clears the display and sets DDRAM Address 0 in the address counter.
//              After the write operation, it polls for the busy flag (BF) to become 0 and then sets the cursor position to the beginning of the display.
// Return: None

void lcdclear(void)
{
    // Set RS and RW to 0 for command mode and write mode, respectively
    RS = 0;
    RW = 0;

    // Clears entire display and sets DDRAM Address 0 in the address counter
    lcd_ptr = 0x01;

    // Poll for BF=0
    lcdbusywait();

    // Set the cursor position to the beginning of the display
    lcdgotoaddr(0x00);
}


// Function: hex_dump
// Description: Displays a hexadecimal dump of the LCD content. It iterates through the LCD memory addresses (0x00 to 0x4F)
//              in 16-byte rows, printing the hexadecimal values of each address. The LCD pointer (lcd_ptr) is used to access
//              the LCD memory addresses, and the function prints the lower 7 bits of the address.
// Return: None

void hex_dump()
{
    // Set the cursor position to the beginning of the LCD
    lcdgotoaddr(0x00);

    int loop = 0;

    // Iterate through LCD memory addresses (0x00 to 0x4F)
    for (int i = 0; i < 80; i++)
    {
        if (loop == 16)
        {
            loop = 0;
            printf("\n\r");
        }
        loop++;

        // Set RS and RW to 1 for data read mode
        RS = 1;
        RW = 1;

        // Print the lower 7 bits of the LCD pointer (lcd_ptr)
        printf("%X\t", (lcd_ptr) & 0x7F);
    }

    printf("\n\r");
}


// Function: create_custom_char
// Parameters: char ch_code - Character code for the custom character (0 to 7)
//             uint16_t* ch_arr - Array containing the custom character pattern (8 elements)
// Description: Creates a custom character on the LCD using the given character code and pattern array.
//              It calculates the starting address for the custom character in the CGRAM (0x40 + ch_code * 8)
//              and then iterates through each row (8 rows) of the custom character, writing the pattern to the CGRAM.
//              After creating the custom character, it sets the cursor position to row 2, column 1.
// Return: None

void create_custom_char(char ch_code, uint16_t* ch_arr)
{
    uint16_t address = (0x40 | (ch_code - '0' << 3));

    // Iterate through each row (8 rows) of the custom character
    for (int i = 0; i < 8; i++)
    {
        // Set RS and RW to 0 for command write mode
        RS = 0;
        RW = 0;

        // Set the LCD pointer to the appropriate CGRAM address for the current row
        lcd_ptr = address | i;

        // Wait for the LCD to become non-busy
        lcdbusywait();

        // Set RS to 1 for data write mode
        RS = 1;

        // Set the LCD pointer to the custom character pattern for the current row
        lcd_ptr = ch_arr[i];

        // Wait for the LCD to become non-busy
        lcdbusywait();
    }

    // Set RS and RW to 1 and 0, respectively, for data write mode
    RS = 1;
    RW = 0;

    // Set the LCD pointer to the starting address of CGRAM
    lcd_ptr = 0x40;

    // Set the cursor position to row 2, column 1
    lcdgotoxy(2, 1);

    // Set RS to 1 for data write mode
    RS = 1;

    // Set the LCD pointer to the custom character code
    lcd_ptr = ch_code - '0';

    // Wait for the LCD to become non-busy
    lcdbusywait();
}


// Function: ascii_to_int
// Parameters: char *arr - Character array to be converted to an integer
// Description: Converts a character array 'arr' to an integer by iterating through each character.
//              The function handles both hexadecimal (A-F) and decimal (0-9) characters in the array.
//              It accumulates the integer value by multiplying the existing value by the base (16 for hexadecimal, 10 for decimal)
//              and adding the value of the current character converted to an integer.
//              The iteration continues until a carriage return character (0x0D) is encountered.
// Return: uint16_t - Converted integer value

uint16_t ascii_to_int(char *arr)
{
    int i = 0;
    uint8_t x = 0;
    uint16_t buff_size = 0;

    // Iterate through each character in the array until a carriage return is encountered
    while (arr[i] != 0x0D)
    {
        // Check if the character is in the range of 'A' to 'Z' (hexadecimal)
        if ((arr[i] >= 'A') && (arr[i] <= 'Z'))
        {
            x = (arr[i] - 55);  // Convert ASCII character to an integer (A=10, B=11, ..., Z=35)
            buff_size = (buff_size * 16) + x;
            i++;
        }
        else
        {
            x = (arr[i] - '0');  // Convert ASCII character to an integer
            buff_size = (buff_size * 10) + x;
            i++;
        }
    }

    return buff_size;  // Return the integer value
}


// Function: get_input
// Parameters: char* arr - Pointer to a character array to store the user input
// Description: Gets input from the user by reading characters using the getchar function until a newline character (ENDOFLINE) is encountered.
//              It echoes each input character back to the user using putchar and prints a newline character after each character.
//              The input characters are stored in the array 'arr', and the function terminates when a newline character is received.
// Return: None

void get_input(char* arr)
{
    // Variable to loop through the indexes of 'arr'
    uint16_t i = 0;

    // Continue getting input until a newline character is encountered
    while (1)
    {
        // Read a character from the user
        arr[i] = getchar();

        // Check if End of Line (newline) has occurred
        if (arr[i] == ENDOFLINE)
        {
            break;
        }

        // Echo out the input character received
        putchar(arr[i]);
        printf("\n\r");

        // Increment the index for the next character
        i++;
    }

    return;
}


// Function: cgram_dump
// Description: Displays a dump of the CGRAM (Character Generator RAM) on the LCD.
//              It iterates through each CGRAM address (0x40 to 0x47), prints the starting address in hexadecimal,
//              and then iterates through each row (8 rows) for that address, printing the corresponding LCD pointer value.
// Return: None

void cgram_dump()
{
    // Iterate through each CGRAM address (0x40 to 0x47)
    for (uint8_t i = 0; i < 8; i++)
    {
        // Print the starting address in hexadecimal
        printf_tiny("0X%d: ", i);

        // Calculate the starting address for the current CGRAM row
        uint16_t address = (0x40 | (i << 3));

        // Iterate through each row (8 rows) for the current CGRAM address
        for (int j = 0; j < 8; j++)
        {
            // Set RS and RW to 0 for command write mode
            RS = 0;
            RW = 0;

            // Set the LCD pointer to the current CGRAM row
            lcd_ptr = address | j;

            // Wait for the LCD to become non-busy
            lcdbusywait();

            // Set RS and RW to 1 for data read mode
            RS = 1;
            RW = 1;

            // Print the LCD pointer value in hexadecimal (masked to 6 bits)
            printf("%X ", lcd_ptr & 0x3F);
        }

        // Print a newline character for each CGRAM row
        printf_tiny("\n\r");
    }
}

