################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/core_bt_xinput.c \
../APP/hidkbd.c \
../APP/hidkbd_main.c \
../APP/hoja_backend.c \
../APP/rsc_descriptors.c \
../APP/util_gamepad.c 

OBJS += \
./APP/core_bt_xinput.o \
./APP/hidkbd.o \
./APP/hidkbd_main.o \
./APP/hoja_backend.o \
./APP/rsc_descriptors.o \
./APP/util_gamepad.o 

C_DEPS += \
./APP/core_bt_xinput.d \
./APP/hidkbd.d \
./APP/hidkbd_main.d \
./APP/hoja_backend.d \
./APP/rsc_descriptors.d \
./APP/util_gamepad.d 


# Each subdirectory must supply rules for building sources it contributes
APP/%.o: ../APP/%.c APP/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


