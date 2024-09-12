################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Profile/battservice.c \
../Profile/devinfoservice.c \
../Profile/hiddev.c \
../Profile/hidkbdservice.c \
../Profile/scanparamservice.c 

OBJS += \
./Profile/battservice.o \
./Profile/devinfoservice.o \
./Profile/hiddev.o \
./Profile/hidkbdservice.o \
./Profile/scanparamservice.o 

C_DEPS += \
./Profile/battservice.d \
./Profile/devinfoservice.d \
./Profile/hiddev.d \
./Profile/hidkbdservice.d \
./Profile/scanparamservice.d 


# Each subdirectory must supply rules for building sources it contributes
Profile/%.o: ../Profile/%.c Profile/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


