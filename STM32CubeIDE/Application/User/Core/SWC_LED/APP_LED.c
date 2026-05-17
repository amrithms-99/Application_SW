/*
 * APP_LED.c
 *
 *  Created on: 26-Apr-2026
 *      Author: amrit
 */

#include "stm32f7xx.h"
char MSG[] = "HELLO\r\n";

/* USER CODE BEGIN Header_StartTask02 */
/**
* @brief Function implementing the LED_Task_10ms thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartTask02 */
void StartTask02(void *argument)
{
  /* USER CODE BEGIN StartTask02 */
  /* Infinite loop */
  for(;;)
  {
	HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_7);


    osDelay(500);
  }
  /* USER CODE END StartTask02 */
}

