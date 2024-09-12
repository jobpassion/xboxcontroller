################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS/core_riscv.c 

OBJS += \
./RVMSIS/core_riscv.o 

C_DEPS += \
./RVMSIS/core_riscv.d 


# Each subdirectory must supply rules for building sources it contributes
RVMSIS/core_riscv.o: /Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS/core_riscv.c RVMSIS/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


