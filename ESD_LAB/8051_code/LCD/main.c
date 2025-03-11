/**
 * main.C - Implementation that Initializes the all the modules
 *
 *
 * @author  SAI CHARAN MANDADI
 * @date    NOV-14-2023
 *
 */

#include "LCD.h"
#include "uart.h"

uint8_t saved_address;

volatile uint8_t __at(0x8000) lcd_ptr; //initializing the variabble of lcd pointer
volatile int counter=0; // counter to initialize the timer

volatile uint8_t msec = 0;
volatile uint8_t secz = 0;
volatile uint8_t seco = 0;
volatile uint8_t minz = 0;
volatile uint8_t mino = 0;


_sdcc_external_startup()
{
    AUXR|=0x0C; //for 1kB memory
    return 0;
}

// Function: timer0_init
// Description: Initializes Timer 0 with the specified settings.
// Parameters: None
// Return: void
void timer0_init()
{
    TMOD |= 0x01; // set the mode for timer 0
    TL0=0x00; // set the low value of timer
    TH0=0x00; // set the high value of timer
    EA = 1; // Enable global interrupts
    ET0 = 1;
    TR0 = 1; //enable timer interrupts
}

// Function: timer0_ISR
// Description: Timer 0 interrupt service routine (ISR).
//               Updates a timer and displays the time on an LCD.
// Parameters: None
// Return: void
void timer0_ISR() __interrupt(1)
{
    //save the current address
    saved_address = get_cursor_address();
    static int i = 0;
    int t = 2200;
    while(t--);
    i++;
    //count to keep track of every 10ms
    if (i == 1)
    {
        i= 0;
        //update the ms digit
        msec++;
        if (msec == 10)
        {
            msec = 0;
            secz++;
            //update the second's zeroth digit
            if (secz == 10)
            {
                secz = 0;
                //update the second's ten's digit
                seco++;
                if (seco == 6)
                {
                    seco = 0;
                    //update the minute's zeroth index
                    minz++;
                    if (minz == 10)
                    {
                        minz=0;
                        //update the minute's ten's index
                        mino++;
                    }
                }
            }
        }
        //print it at the bottom left of the LCD display
        lcdgotoaddr(0x59);
        lcdputch((char)mino+ '0');
        lcdgotoaddr(0x5A);
        lcdputch((char)minz+ '0');
        lcdgotoaddr(0x5B);
        lcdputch((char)58);
        lcdgotoaddr(0x5C);
        lcdputch((char)seco+ '0');
        lcdgotoaddr(0x5D);
        lcdputch((char)secz+ '0');
        lcdgotoaddr(0x5E);
        lcdputch((char)46);
        lcdgotoaddr(0x5F);
        lcdputch((char)msec+ '0');
    }
    lcdgotoaddr(saved_address); //pop out the saved address
    TL0=0x00; // set the low value of timer
    TH0=0x00; // set the high value of timer
    TF0=0; //clear overflow flag
}

// Function: main
// Description: Initializes UART, LCD and handles commands using the corresponding LCD functions
// Parameters: None
// Return: void
void main(void)
{
    char *input_array;
    uint16_t arr_input[8];
    uint16_t block_size=0;
    //initialise LCD
    lcdinit();
    EA = 1;
    //initialize the timer values to 0 on startup
    __critical
    {
        msec = 0;
        secz = 0;
        seco = 0;
        minz = 0;
        mino = 0;
    }
    // initialize the timer0
    timer0_init();
    const char* input = "MANDADI SAI CHARAN UCB ESD LAB 4 \0";
    //initialise LCD
    lcdinit();
    //prints the input string from 00 address
    lcdgotoaddr(0x00);
    lcdputstr(input);
    char* string=NULL;

    while(1)
    {
        //Home menu options
        printf_tiny("Press H for the home menu\n\r");
        printf_tiny("Enter a choice:    \n\r");

        //accept new character at every iteration
        uint8_t input=getchar();
        printf_tiny("%c\n\r",input);
        switch(input)
        {
            case 'H':
                __critical
                {
                    printf_tiny("*************Home Menu***************");

                    printf_tiny("\n\rEnter J to go to desired coordinate)\n\r");
                    printf_tiny("\n\rPress C to print desired character on LCD\n\r");
                    printf_tiny("\n\rPress S to print desired string on LCD\n\r");
                    printf_tiny("\n\rPress B to clear LCD\n\r");
                    printf_tiny("\n\rPress E to stop the elapsed time clock\n\r");
                    printf_tiny("\n\rPress R to restart the clock\n\r");
                    printf_tiny("\n\rPress Z to reset the clock back to '00:00.0'\n\r");
                    printf_tiny("\n\rPress G to go to a particular address location'\n\r");
                    printf_tiny("\n\rPress F to Create a custom character'\n\r");
                    printf_tiny("\n\rPress D For Hex Dump of DDRAM\n\r");
                    printf_tiny("\n\rPress I For Hex Dump of CGRAM\n\r");
                    printf_tiny("\n\r**************************************************\n\r");
                }
                break;
            case 'J':
                //Jump to co-ordinates
                printf_tiny("Enter row: \n\r");
                uint16_t row=getchar();
                //echo the row input
                putchar(row);
                printf_tiny("Enter column: \n\r");
                uint16_t column=getchar();
                //Echo the column input
                putchar(column);
                //check if the row and clumn values lie between the address range of the LCD
                if (((row >= '0') && (row <= '3')) && ((column >= '0') && (column <= '9')))
                {
                    //Uses lcd go to co ordinates as suggested in the Assignment sheet
                    lcdgotoxy(row-'0',column-'0');
                }
                //check if the row  and column values lie between the address range of the LCD
                else if (((row >= '0') && (row <= '3')) && ((column >= 'A') && (column <= 'F')))
                {
                    //Uses lcd go to co ordinates as suggested in the Assignment sheet
                    lcdgotoxy(row-'0',column-55);
                }
                //handles the invalid input row/column condition
                else
                {
                    printf_tiny("Enter a valid input with row 0-3 and column 0-F\n\r");
                }
                break;
            case 'C':
                //Input character
                printf_tiny("Enter character to print on LCD: \n\r");
                uint8_t lcd_input=getchar();
                //echoes the input character back to the screen
                printf_tiny("%c\n\r",lcd_input);
                __critical
                {
                    lcdputch(lcd_input);
                }
                break;
            case 'S':
                //input string
                printf_tiny("Enter string to print on LCD: \n\r");
                //used to check the End of Line
                int eol_check=1;
                int i=0;
                //Takes input from the user
                while(eol_check)
                {
                    uint8_t ch=getchar();
                    //ASCII of carriage return is 0xD
                    printf_tiny("%c",ch);
                    //Check End of Line using enter
                    if(ch==0xD)
                        eol_check=0;
                    //else store the input in the string array
                    else
                    {
                        *(string+i)=ch;
                        i++;
                    }
                }
                //Terminate the input string with null character
                    *(string+i)='\0';
                  __critical
                    {
                        lcdputstr(string);
                    }
                break;
            case 'B':
                //clear LCD
                __critical
                {
                    lcdclear();
                }
                break;
            case 'Z':
                //zero the clock display
                __critical
                {
                    msec = 0;
                    secz = 0;
                    seco = 0;
                    minz = 0;
                    mino = 0;
                    //print it at the bottom left of the LCD display
                    lcdgotoaddr(0x59);
                    lcdputch((char)mino+ '0');
                    lcdgotoaddr(0x5A);
                    lcdputch((char)minz+ '0');
                    lcdgotoaddr(0x5B);
                    lcdputch((char)58);
                    lcdgotoaddr(0x5C);
                    lcdputch((char)seco+ '0');
                    lcdgotoaddr(0x5D);
                    lcdputch((char)secz+ '0');
                    lcdgotoaddr(0x5E);
                    lcdputch((char)46);
                    lcdgotoaddr(0x5F);
                    lcdputch((char)msec+ '0');
                }
                break;
            case 'E':
                //Stop timer
                TCON &= ~(0x10);
                break;
            case 'R':
                //restart clock
                TCON |= 0x10;
                break;
            case 'G':
                //GO TO ADDRESS
                printf_tiny("Enter go to address: \n\r");
                uint16_t sum = 0;
                //Echoes out the x coordinate
                uint16_t x=getchar();
                putchar(x);
                //echoes out the y coOrdinate
                uint16_t y=getchar();
                putchar(y);
                //check if the x and y coordinates fall within the lcd range
                if (((x >= '0') && (x <= '5')) && ((y >= '0') && (y <= '9')))
                {
                    //initializes sum to 0
                    sum = 0;
                    //converts x and y to integers
                    x = x-'0';
                    y = y-'0';
                    //calculates the sum using x and y
                    sum = x*16 + y;
                    //Uses go to address as suggested in the Assignment sheet
                    lcdgotoaddr(sum);
                }
                //check if the x and y coordinates fall within the lcd range
                else if (((x >= '0') && (x <= '5')) && ((y >= 'A') && (y <= 'F')))
                {
                    //initializes sum to 0
                    sum =0;
                    //converts x and y to integers and Hexa decimal equivalents
                    x = x-'0';
                    y = y-55;
                    //calculates sum using x and y coordinates
                    sum = x*16 + y;
                     //Uses go to address as suggested in the Assignment sheet
                    lcdgotoaddr(sum);
                }
                //Handles the invalid range condition
                else
                {
                    printf_tiny("Enter a valid address 00-1f/ 40-58\n\r");
                }
                break;
            case 'D':
                //switch case to handle hex dump
                hex_dump();
                break;
            case 'F':
                printf_tiny("Enter custom code\n\r");
                //echoes out the custom code
                char ch_code = getchar();
                putchar(ch_code);
                putchar('\n');
                printf_tiny("Enter Row values\n\r");
                //Takes the input array values which are used to generate custom character
                for (int j = 0; j<=7; j++)
                {
                    get_input(input_array);
                    block_size = ascii_to_int(input_array);
                    //If the input is > 128, treat it as an invalid condition
                    if (block_size >128)
                    {
                        printf_tiny("Invalid Row values\n\r");
                        break;
                    }
                    //Stores the valid inputs to the array
                    arr_input[j] = block_size;
                }
                //Outputs the Valid characters for debug
                for (int i=0;i<=7;i++)
                {
                    printf_tiny("input values= %u\n\r",arr_input[i]);
                }
                //Create custom character function is used to create the custom character
                create_custom_char(ch_code, arr_input);
                break;
            case 'I':
                //Switch case to handle CGRAM dump
                cgram_dump();
                break;
            default:
                break;
        }
    }
}
