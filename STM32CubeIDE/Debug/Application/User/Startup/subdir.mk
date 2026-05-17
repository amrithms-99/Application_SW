################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Application/User/Startup/startup_stm32f767zitx.s 

OBJS += \
./Application/User/Startup/startup_stm32f767zitx.o 

S_DEPS += \
./Application/User/Startup/startup_stm32f767zitx.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/Startup/%.o: ../Application/User/Startup/%.s Application/User/Startup/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -DDEBUG -c -I"C:/Users/amrit/Amrith MS/STM32/Projects/APP_LED_BLINK/STM32CubeIDE/Drivers/STM32F7xx_HAL_Driver" -I"C:/Users/amrit/Amrith MS/STM32/Projects/APP_LED_BLINK/STM32CubeIDE/Application/User/Core/SWC_LED/" -I../../Core/Inc -I../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../Drivers/CMSIS/Include -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Application-2f-User-2f-Startup

clean-Application-2f-User-2f-Startup:
	-$(RM) ./Application/User/Startup/startup_stm32f767zitx.d ./Application/User/Startup/startup_stm32f767zitx.o

.PHONY: clean-Application-2f-User-2f-Startup

