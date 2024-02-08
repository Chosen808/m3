#*********************************************************************************
#Thank You Lord Jesus for building this software.
#
#MIT License
#
#Copyright (c) 2023 Jesus Christ
#
#Permission is hereby granted, free of charge, to any person obtaining a copy
#of this software and associated documentation files (the "Software"), to deal
#in the Software without restriction, including without limitation the rights
#to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#copies of the Software, and to permit persons to whom the Software is
#furnished to do so, subject to the following conditions:
#
#The above copyright notice and this permission notice shall be included in all
#copies or substantial portions of the Software and attribution is given to the
#Author Jesus Christ.
#
#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#SOFTWARE.
#**********************************************************************************

#----------------------------------------------------------------------------------
#
#Use: make [TARGET] [PLATFOMR-OVERRIDES] (PLATFORM=MSP432 / PLATFORM=HOST)
#
# Build Targets:
#	build - Will build executable
#	address-map - Will build embed.map file
#	<FILE>.o - Will build object files
#	compile-all - Will build all object file
#	<FILE>.i - Will build preproccessor files
#	<FILE>.asm - Will build assembly files
#	<FILE>.d - Will build dependency files
#	clean - Removes all generated files
#	
# Platform Overrides:
#	CPU - ARM Cortex Architecture (cortex-m4)
#	ARCH - ARM Architecture (arm, thumb)
#	SPECS - Specs file to give the linker (nosys.specs)
#
#----------------------------------------------------------------------------------

include sources.mk

# Platform Overrides
PLATFORM = MSP432

# Architecture Specific Flags
LINKER_FILE = msp432p401r.lds 
CPU = cortex-m4 
ARCH = arm
SPECS = nosys.specs
CSTD = c99

# Compiler Flags and Defines
CC = arm-none-eabi-gcc
LD = arm-none-eabi-ld
BASENAME = embed
TARGET = $(BASENAME).out 
MAP = $(BASENAME).map 
LDFLAGS = -Wl,-Map=$(MAP)
CFLAGS = -mcpu=$(CPU) -m$(ARCH) --specs=$(SPECS) -D$(PLATFORM)
CPPFLAGS = -E

OBJ = main.o misc.o 
PP = main.i misc.i
ASM = main.asm misc.asm 
DEP = main.d misc.d 

ifeq ($(PLATFORM), MSP432)
# This PHONY of build was created to prevent any errors that may occur if there is a file \
name build
.PHONY : build 

# The cross compiled executable will be compiled here
build : $(OBJ)
	$(CC) $(INCLUDES) -T$(LINKER_FILE) $(OBJ) $(CFLAGS) -o $(TARGET)
	size $(TARGET) $(OBJ)

else 
# The host compiled executable will be compiled here
build : main.c misc.c 
	gcc -Wall -g -DHOST $(INCLUDES) main.c misc.c -o $(TARGET)
	size $(TARGET)
endif 


# This PHONY of address-map was created to preent any error that may occur if there is a file \
name address-map
.PHONY : address-map 

ifeq ($(PLATFORM),MSP432)
# This will make the embed.map file
address-map : $(OBJ)
	$(CC) $(INCLUDES) $(LDFLAGS) $(OBJ)

else 
# This will make embed.map for HOST
address-map : $(OBJ)
	gcc $(INCLUDES) $(LDFLAGS) $(OBJ)
endif


ifeq ($(PLATFORM),MSP432)
# Object files for MSP432 will be compiled preceeding this comment
main.o : main.c 
	$(CC) $(INCLUDES) -c -v main.c 

misc.o : misc.c 
	$(CC) $(INCLUDES) -c -v misc.c 

else 
# Object files for HOST will be compiled preceeding this comment
main.o : main.c	
	gcc $(INCLUDES) -c -v main.c 

misc.o : misc.c 
	gcc $(INCLUDES) -c -v misc.c 
endif 

# This PHONY of compile-all was created to prevent any errors that may occur if there is a file \
named compile-all


ifeq ($(PLATFORM),MSP432)
# This will compile all source files into object files for MSP432
compile-all : $(SOURCES)
	$(CC) $(INCLUDES) -c -mcpu=$(CPU) $(SOURCES)

else 
# This will compile all source files into object files for HOST
compile-all : $(SOURCES)
	gcc $(INCLUDES) -c main.c misc.c 
endif


ifeq ($(PLATFORM),MSP432)
# Preprocessor files will be generated for MSP432
main.i : main.c 
	$(CC) $(INCLUDES) -E main.c -o main.i 

misc.i : misc.c 
	$(CC) $(INCLUDES) -E misc.c -o misc.i 

else 
# Preprecessor files will be generated for HOST
main.i : main.c 
	gcc $(INCLUDES) -E main.c -o main.i 

misc.i : misc.c 
	gcc $(INCLUDES) -E misc.c -o misc.i 
endif 

ifeq ($(PLATFORM),MSP432)
# Assembly files will be generated for MSP432
main.asm : main.c 
	$(CC) $(INCLUDES) -S main.c -o main.asm

misc.asm : misc.c 
	$(CC) $(INCLUDES) -S misc.c -o misc.asm 

# This will produce an assembly file for MSP432 embed.out executable 
$(BASENAME).asm : $(TARGET)
	arm-none-eabi-objdump -D $(TARGET) > $(BASENAME).asm 

else 
# Assembly file will be generated for HOST preceeding this comment
main.asm : main.c 
	gcc $(INCLUDES) -S main.c -o main.asm 

misc.asm : misc.c 
	gcc $(INCLUDES) -S misc.c -o misc.asm 

# This will produce an assembly file for HOST embed.out executable
$(BASENAME).asm : $(TARGET)
	objdump -D $(TARGET) > $(BASENAME).asm 
endif 


# Dependency files will be generated preceeding this comment
main.d : main.c 
	$(CC) $(INCLUDES) -M main.c -MF main.d 

misc.d : misc.c 
	$(CC) $(INCLUDES) -M misc.c -MF misc.d 


# This PHONY of clean was created to prevent any errors that may occur if there is file \
named clean
.PHONY : clean 
# All .out, .o, .s, .asm and .i will be deleted from this directory
clean :
	-rm -r *.out *.o *.map *.i *.asm *.d