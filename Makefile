

# 目标文件
TARGET 		:= main

DEVICE 		:= msp430fr6989

# DIR
GCC_DIR		:= ~/y-study/msp430-gcc-9.3
GCC_BIN_DIR 	:= $(GCC_DIR)/bin
INC_DIR 	:= $(GCC_DIR)/msp430-elf/include
LD_DIR 		:= $(INC_DIR)/devices/$(DEVICE).ld

# 工具
CC 		:= $(GCC_BIN_DIR)/msp430-elf-gcc
GDB 		:= $(GCC_BIN_DIR)/msp430-elf-gdb
SIZE		:= $(GCC_BIN_DIR)/msp430-elf-size

# 参数
CFLAGS 		:= -I $(INC_DIR) -mmcu=$(DEVICE) -O2 -g
LFLAGS 		:= -L $(INC_DIR) -T $(LD_DIR)

# 输出文件格式，对于单片机编程来说，一般我们先intel 的hex格式.
# FORMAT = hex

# 当前目录下 目录
BUILDDIR	:= $(shell pwd)
FDIR		:= $(BUILDDIR)/output



# 源文件C和汇编ASM
SRCS		:= ${wildcard *.c}\
		  # ${wildcard ${}/*.c }

# 中间文件
OBJC		:= ${patsubst %.c, %.o, ${SRCS}}

.SECONDARY:
#保留中间文件

all	: init edit 
	@echo ""
	@echo "========终极目标========"
	@echo ""
	@echo ""
	ls

init	:
	@echo "========新建目录========"
	mkdir -p $(FDIR)
	@echo

edit	: $(OBJC)
	@echo "========执行文件========"
	@echo 
	$(CC) $(LFLAGS) $? -o $@.out
	$(SIZE) -t $@.out
	@echo ""
	$(CC) $(LFLAGS) $? -o $@.elf
	$(SIZE) -t $@.elf
	@echo ""
	$(CC) $(LFLAGS) $? -o $@.hex
	$(SIZE) -t $@.hex
	@echo ""
	@echo "========编译结束========"


${OBJC} : %.o : %.s
	@echo "========目标文件========"
	@echo 
	$(CC) $(CFLAGS) -c $^ -o $@
	$(SIZE) -t $@
	@echo

%.s : %.i
	@echo "========汇编文件========"
	@echo
	$(CC) $(CFLAGS) -S $^ -o $@
	@echo

%.i : %.c
	@echo "========预编译========"
	@echo
	$(CC) $(CFLAGS) -E $^ -o $@
	@echo ""

debug: 
	$(GDB) edit.out

.PHONY:	clean
clean:
	rm -rf $(FDIR)
	rm -rf $(OBJC)
	rm -rf *.i
	rm -rf *.s
	rm -rf *.o
	rm -rf *.out
	rm -rf *.elf
	rm -rf *.hex
	@echo "========清理结束========"
	ls
