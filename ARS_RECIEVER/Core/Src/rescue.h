/*
 * 	File:		rescue.h
 *	@brief      Header file that contains all the interface declerations to handle and perform the
 *				rescue animations.
 *  Created on: Dec 11, 2023
 *  Author: 	Akash Karoshi and Sai Charan Mandadi
 */

#ifndef SRC_RESCUE_H_
#define SRC_RESCUE_H_

#include "led.h"

/**
 * @brief      Function to handle rescue response based on alert status.
 *
 * @param[in]  alert_status   The status of the rescue alert.
 *
 * @return     void
 */
void rescue_response(char alert_status);

#endif /* SRC_RESCUE_H_ */
