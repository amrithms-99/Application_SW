/*
 * App_Header.c
 *
 *  Created on: 17-May-2026
 *      Author: amrit
 */
#include "stm32f7xx.h"
__attribute__((section(".header")))

const app_header_t app_header =
{
		.magic_num = 100,
		.crc = 0,
		.size = 0

};
