/*
 * 	File: 		rescue.c
 *	@brief      Implementation of all the functions required to perform rescue animation and its
 *				supporting functions.
 *  Created on: Dec 08, 2023
 *  Author: 	Akash Karoshi and Sai Charan Mandadi
 */

#include "rescue.h"

#define RF_SYNC 			(100)
#define BLINK_COUNT 		(5)
#define DELAY_RF_LED_SYNC 	(85)
#define LED_ADDRESS_BOUND 	(128)
#define ROW_SIZE			(8)
#define COLUMN_SIZE 		(8)
#define RESCUE_ROW_LOC		(0x81)
#define RESCUE_COLUMN_LOC	(0x07)
#define LED_ROW1_ADDRESS	(0x83)
#define LED_ROW2_ADDRESS	(0x85)
#define LED_ROW3_ADDRESS	(0x89)
#define LED_ROW4_ADDRESS	(0x91)
#define LED_ROW5_ADDRESS	(0xA1)
#define LED_ROW6_ADDRESS	(0xC1)
#define LED_ROW7_ADDRESS	(0x81)
#define COLUMN1_ADDRESS		(0x02)
#define COLUMN2_ADDRESS		(0x04)
#define COLUMN3_ADDRESS		(0x08)
#define COLUMN4_ADDRESS		(0x10)
#define COLUMN5_ADDRESS		(0x20)
#define COLUMN6_ADDRESS		(0x40)
#define COLUMN7_ADDRESS		(0x80)
#define ON					(1)
#define OFF					(0)

/**
 * @brief      Function to perform LED sequence for rescue.
 *
 * @param[in]  vehicle_loc   The current location of the rescue vehicle.
 * @param[in]  led_address   The LED address for displaying the sequence.
 * @param[in]  loc1          The adjusted location for display purposes.
 *
 * @return     void
 */
void process_led_sequence(int vehicle_loc, int led_address, int loc1)
{
	// Initialize variables
	int loc = led_address;
	int rescue_status = 0;
	//set source address
	int src = 0x00;
	//set destination address
	int dst = loc1;
	//set ambulance location
	int amb = 0x00;
	//set each loop counters
	int count = 1;
	int count1 = 1;

	// Perform LED sequence until rescue is completed
	while (!rescue_status)
	{
		// Set LED at adjusted location
		MAX7219SetLED(loc1, (led_address <= LED_ADDRESS_BOUND) ? led_address : (led_address - RESCUE_ROW_LOC), ON);
		delay_ms(RF_SYNC >> 2);
		delay_ms(RF_SYNC >> 2);

		// Update display based on count and src
		if (amb > LED_ADDRESS_BOUND)
		{
			MAX7219SetLED(src, (amb - RESCUE_ROW_LOC), OFF);
		}
		else
		{
			MAX7219SetLED(src, amb, OFF);
		}

		// Check for completion
		if (src == dst)
		{
			if (amb == loc)
			{
				rescue_status = 1;
				MAX7219SetLED(loc1, (led_address > LED_ADDRESS_BOUND) ? (led_address - RESCUE_ROW_LOC) : (led_address | amb), ON);
			}
			else
			{
				// Update amb based on vehicle location and count
				amb = (vehicle_loc - 1) == 0 || (vehicle_loc - 1) == RESCUE_COLUMN_LOC ? 1 << count : (1 << count);
				count++;

				// Adjust amb if necessary
				if (amb > (loc - RESCUE_ROW_LOC))
				{
					amb = loc;
				}
			}

			// Set LED based on conditions
			if (amb < loc)
			{
				MAX7219SetLED(src, ((vehicle_loc - 1) == 0 || (vehicle_loc - 1) == RESCUE_COLUMN_LOC) ? (amb | led_address - RESCUE_ROW_LOC) : (amb | led_address), ON);
			}
		}
		else
		{
			// Update src and set LED
			src = count1;
			MAX7219SetLED(src, amb, ON);
			count1++;
		}

		// Delay for synchronization
		delay_ms(RF_SYNC >> 1);
	}
}

/**
 * @brief      Function to initiate the rescue process.
 *
 * @param[in]  vehicle_loc   The current location of the rescue vehicle.
 * @param[in]  led_address   The initial LED address for animation.
 *
 * @return     void
 */
void initiate_rescue(int vehicle_loc, int led_address)
{
	// Adjust location for display purposes
	int loc1 = vehicle_loc - 1;

	// LED animation loop
	for (int j = 0; j < BLINK_COUNT; j++)
	{
		// Set LED based on conditions and delay
		MAX7219SetLED(loc1, (led_address <= LED_ADDRESS_BOUND) ? led_address : (vehicle_loc == RESCUE_COLUMN_LOC) ? led_address : (led_address - RESCUE_ROW_LOC), ON);
		delay_ms(DELAY_RF_LED_SYNC);
		MAX7219SetLED(loc1, 0, OFF);
		delay_ms(RF_SYNC >> 1);
	}

	// Clear display
	cleardisplay();

	// Processing loop for LED sequence
	process_led_sequence(vehicle_loc, led_address, loc1);

	// Delay for synchronization
	delay_ms(RF_SYNC >> 1);
}

/**
 * @brief      Function to update the LED address based on the count.
 *
 * @param[in]   led_address   The current LED address.
 * @param[in]   vehicle_loc   The current location of the rescue vehicle.
 * @param[in]   count         The count for determining the LED address.
 *
 * @return     The updated LED address.
 */
int update_led_address(int* led_address,int vehicle_loc,int count)
{
	switch (count)
	{
		case 1:
			(*led_address) = (vehicle_loc == 0 || vehicle_loc == (ROW_SIZE-1)) ? LED_ROW1_ADDRESS : COLUMN1_ADDRESS;
			break;
		case 2:
			(*led_address) = (vehicle_loc == 0 || vehicle_loc == (ROW_SIZE-1)) ? LED_ROW2_ADDRESS : COLUMN2_ADDRESS;
			break;
		case 3:
			(*led_address) = (vehicle_loc == 0 || vehicle_loc == (ROW_SIZE-1)) ? LED_ROW3_ADDRESS : COLUMN3_ADDRESS;
			break;
		case 4:
			(*led_address) = (vehicle_loc == 0 || vehicle_loc == (ROW_SIZE-1)) ? LED_ROW4_ADDRESS : COLUMN4_ADDRESS;
			break;
		case 5:
			(*led_address) = (vehicle_loc == 0 || vehicle_loc == (ROW_SIZE-1)) ? LED_ROW5_ADDRESS : COLUMN5_ADDRESS;
			break;
		case 6:
			(*led_address) = (vehicle_loc == 0 || vehicle_loc == (ROW_SIZE-1)) ? LED_ROW6_ADDRESS : COLUMN6_ADDRESS;
			break;
		case 7:
			*led_address = (vehicle_loc == 0 || vehicle_loc == (ROW_SIZE-1)) ? LED_ROW7_ADDRESS : COLUMN7_ADDRESS;
			break;
		default:
			(*led_address) = 0;
	}

	return led_address;
}

/**
 * @brief      Function to handle rescue response based on alert status.
 *
 * @param[in]  alert_status   The status of the rescue alert.
 *
 * @return     void
 */
void rescue_response(char alert_status)
{
    int vehicle_loc = 0;
    int led_address = COLUMN7_ADDRESS;
    char prev_alert_status = '0';
    int count = 0;
    const char acc_alert_true = '1';
    const char acc_alert_false = '0';

	 // Update count and reset indicators
	if (vehicle_loc == ROW_SIZE)
	{
		count++;
		vehicle_loc = 0;
	}

	//update the led_address if vehicle reaches to 0th location
	if (vehicle_loc == 0)
	{
		led_address = 1;
	}

	//Update the count to 0 as it reached the maximum column size
	if (count == COLUMN_SIZE)
	{
		count = 0;
	}
	else
	{
		// Update z based on count and i
		update_led_address(&led_address, vehicle_loc, count);
	}

	// Display pattern on MAX7219 LED
	MAX7219SetLED(vehicle_loc, led_address, ON);
	vehicle_loc++;

	// Handle Accident alert which was received using RF
	if (prev_alert_status == acc_alert_true)
	{
		alert_status = acc_alert_false;
		delay_ms(RF_SYNC);
	}

	// Handle LED animation
	if (alert_status == acc_alert_true)
	{
		initiate_rescue(vehicle_loc, led_address);
	}

	// Update previous result and reset display
	prev_alert_status = alert_status;
	//set the default map after rescue is successful
	setdefaultMAP();
	//RF and led synchronization delay
	delay_ms(DELAY_RF_LED_SYNC);
}
