################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Led.c \
../SoftSpi.c \
../Timer.c \
../Work.c \
../config_set.c \
../main.c 

OBJS += \
./Led.o \
./SoftSpi.o \
./Timer.o \
./Work.o \
./config_set.o \
./main.o 

C_DEPS += \
./Led.dep \
./SoftSpi.dep \
./Timer.dep \
./Work.dep \
./config_set.dep \
./main.dep 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo '正在构建文件： $<'
	@echo '正在调用： C Compiler'
	kf8cc -c -pKF8A100GQS -I"E:\KungFuIDE\include" -I"C:\Users\Rick\Desktop\EF1E-B" -o"$@" "$<"
	@echo '已结束构建： $<'
	@echo ' '


