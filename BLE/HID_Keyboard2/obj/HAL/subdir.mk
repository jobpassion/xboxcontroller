################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/MCU.c \
/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/RTC.c \
/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/SLEEP.c 

OBJS += \
./HAL/MCU.o \
./HAL/RTC.o \
./HAL/SLEEP.o 

C_DEPS += \
./HAL/MCU.d \
./HAL/RTC.d \
./HAL/SLEEP.d 


# Each subdirectory must supply rules for building sources it contributes
HAL/MCU.o: /Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/MCU.c HAL/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

HAL/RTC.o: /Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/RTC.c HAL/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

HAL/SLEEP.o: /Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/SLEEP.c HAL/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


