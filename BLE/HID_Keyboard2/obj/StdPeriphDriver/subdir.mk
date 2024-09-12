################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_adc.c \
/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_clk.c \
/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_flash.c \
/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_gpio.c \
/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_i2c.c \
/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_pwm.c \
/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_pwr.c \
/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_spi0.c \
/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_spi1.c \
/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_sys.c \
/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_timer0.c \
/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_timer1.c \
/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_timer2.c \
/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_timer3.c \
/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_uart0.c \
/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_uart1.c \
/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_uart2.c \
/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_uart3.c \
/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_usb2dev.c \
/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_usb2hostBase.c \
/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_usb2hostClass.c \
/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_usbdev.c \
/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_usbhostBase.c \
/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_usbhostClass.c 

OBJS += \
./StdPeriphDriver/CH58x_adc.o \
./StdPeriphDriver/CH58x_clk.o \
./StdPeriphDriver/CH58x_flash.o \
./StdPeriphDriver/CH58x_gpio.o \
./StdPeriphDriver/CH58x_i2c.o \
./StdPeriphDriver/CH58x_pwm.o \
./StdPeriphDriver/CH58x_pwr.o \
./StdPeriphDriver/CH58x_spi0.o \
./StdPeriphDriver/CH58x_spi1.o \
./StdPeriphDriver/CH58x_sys.o \
./StdPeriphDriver/CH58x_timer0.o \
./StdPeriphDriver/CH58x_timer1.o \
./StdPeriphDriver/CH58x_timer2.o \
./StdPeriphDriver/CH58x_timer3.o \
./StdPeriphDriver/CH58x_uart0.o \
./StdPeriphDriver/CH58x_uart1.o \
./StdPeriphDriver/CH58x_uart2.o \
./StdPeriphDriver/CH58x_uart3.o \
./StdPeriphDriver/CH58x_usb2dev.o \
./StdPeriphDriver/CH58x_usb2hostBase.o \
./StdPeriphDriver/CH58x_usb2hostClass.o \
./StdPeriphDriver/CH58x_usbdev.o \
./StdPeriphDriver/CH58x_usbhostBase.o \
./StdPeriphDriver/CH58x_usbhostClass.o 

C_DEPS += \
./StdPeriphDriver/CH58x_adc.d \
./StdPeriphDriver/CH58x_clk.d \
./StdPeriphDriver/CH58x_flash.d \
./StdPeriphDriver/CH58x_gpio.d \
./StdPeriphDriver/CH58x_i2c.d \
./StdPeriphDriver/CH58x_pwm.d \
./StdPeriphDriver/CH58x_pwr.d \
./StdPeriphDriver/CH58x_spi0.d \
./StdPeriphDriver/CH58x_spi1.d \
./StdPeriphDriver/CH58x_sys.d \
./StdPeriphDriver/CH58x_timer0.d \
./StdPeriphDriver/CH58x_timer1.d \
./StdPeriphDriver/CH58x_timer2.d \
./StdPeriphDriver/CH58x_timer3.d \
./StdPeriphDriver/CH58x_uart0.d \
./StdPeriphDriver/CH58x_uart1.d \
./StdPeriphDriver/CH58x_uart2.d \
./StdPeriphDriver/CH58x_uart3.d \
./StdPeriphDriver/CH58x_usb2dev.d \
./StdPeriphDriver/CH58x_usb2hostBase.d \
./StdPeriphDriver/CH58x_usb2hostClass.d \
./StdPeriphDriver/CH58x_usbdev.d \
./StdPeriphDriver/CH58x_usbhostBase.d \
./StdPeriphDriver/CH58x_usbhostClass.d 


# Each subdirectory must supply rules for building sources it contributes
StdPeriphDriver/CH58x_adc.o: /Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_adc.c StdPeriphDriver/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

StdPeriphDriver/CH58x_clk.o: /Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_clk.c StdPeriphDriver/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

StdPeriphDriver/CH58x_flash.o: /Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_flash.c StdPeriphDriver/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

StdPeriphDriver/CH58x_gpio.o: /Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_gpio.c StdPeriphDriver/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

StdPeriphDriver/CH58x_i2c.o: /Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_i2c.c StdPeriphDriver/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

StdPeriphDriver/CH58x_pwm.o: /Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_pwm.c StdPeriphDriver/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

StdPeriphDriver/CH58x_pwr.o: /Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_pwr.c StdPeriphDriver/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

StdPeriphDriver/CH58x_spi0.o: /Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_spi0.c StdPeriphDriver/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

StdPeriphDriver/CH58x_spi1.o: /Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_spi1.c StdPeriphDriver/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

StdPeriphDriver/CH58x_sys.o: /Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_sys.c StdPeriphDriver/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

StdPeriphDriver/CH58x_timer0.o: /Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_timer0.c StdPeriphDriver/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

StdPeriphDriver/CH58x_timer1.o: /Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_timer1.c StdPeriphDriver/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

StdPeriphDriver/CH58x_timer2.o: /Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_timer2.c StdPeriphDriver/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

StdPeriphDriver/CH58x_timer3.o: /Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_timer3.c StdPeriphDriver/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

StdPeriphDriver/CH58x_uart0.o: /Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_uart0.c StdPeriphDriver/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

StdPeriphDriver/CH58x_uart1.o: /Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_uart1.c StdPeriphDriver/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

StdPeriphDriver/CH58x_uart2.o: /Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_uart2.c StdPeriphDriver/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

StdPeriphDriver/CH58x_uart3.o: /Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_uart3.c StdPeriphDriver/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

StdPeriphDriver/CH58x_usb2dev.o: /Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_usb2dev.c StdPeriphDriver/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

StdPeriphDriver/CH58x_usb2hostBase.o: /Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_usb2hostBase.c StdPeriphDriver/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

StdPeriphDriver/CH58x_usb2hostClass.o: /Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_usb2hostClass.c StdPeriphDriver/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

StdPeriphDriver/CH58x_usbdev.o: /Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_usbdev.c StdPeriphDriver/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

StdPeriphDriver/CH58x_usbhostBase.o: /Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_usbhostBase.c StdPeriphDriver/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

StdPeriphDriver/CH58x_usbhostClass.o: /Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_usbhostClass.c StdPeriphDriver/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -g -DDEBUG=1 -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Startup" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/APP/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HID_Keyboard2/Profile/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/HAL/include" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/Ld" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/BLE/LIB" -I"/Users/jeffery/dev/arduino/wch/ch583-main/EVT/EXAM/SRC/RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


