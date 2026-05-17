################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/User/Core/SWC_LED/APP_LED.c 

OBJS += \
./Application/User/Core/SWC_LED/APP_LED.o 

C_DEPS += \
./Application/User/Core/SWC_LED/APP_LED.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/Core/SWC_LED/%.o Application/User/Core/SWC_LED/%.su Application/User/Core/SWC_LED/%.cyclo: ../Application/User/Core/SWC_LED/%.c Application/User/Core/SWC_LED/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../../Core/Inc -I"C:/Users/amrit/Amrith MS/STM32/Projects/APP_LED_BLINK/STM32CubeIDE/Application/User/Core/SWC_LED" -I../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/amrit/Amrith MS/STM32/Projects/APP_LED_BLINK/STM32CubeIDE/Drivers/STM32F7xx_HAL_Driver" -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-User-2f-Core-2f-SWC_LED

clean-Application-2f-User-2f-Core-2f-SWC_LED:
	-$(RM) ./Application/User/Core/SWC_LED/APP_LED.cyclo ./Application/User/Core/SWC_LED/APP_LED.d ./Application/User/Core/SWC_LED/APP_LED.o ./Application/User/Core/SWC_LED/APP_LED.su

.PHONY: clean-Application-2f-User-2f-Core-2f-SWC_LED

