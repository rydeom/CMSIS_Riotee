RIOTEE_SDK_ROOT ?= /Users/janstiefel/code/fork/Riotee_SDK
GNU_INSTALL_ROOT ?= /Applications/ArmGNUToolchain/13.2.Rel1/arm-none-eabi/bin/

PRJ_ROOT := .
OUTPUT_DIR := _build

# Size of the user stack in bytes. Must be multiple of 4.
RIOTEE_STACK_SIZE:= 1024
# Size of retained memory in bytes including STACK_SIZE.
RIOTEE_RAM_RETAINED_SIZE:= 8192


ifndef RIOTEE_SDK_ROOT
  $(error RIOTEE_SDK_ROOT is not set)
endif

SRC_FILES = \
  $(PRJ_ROOT)/src/main.c \
  $(PRJ_ROOT)/src/run_model.c \
  $(PRJ_ROOT)/src/utils.c \
  $(PRJ_ROOT)/src/model/buffer.c \
  $(PRJ_ROOT)/src/model/model.c \
  $(PRJ_ROOT)/src/model/operator.c \
  $(PRJ_ROOT)/src/model/tensor.c

INC_DIRS = \
  $(PRJ_ROOT)/include \
  $(PRJ_ROOT)/src/model

include $(RIOTEE_SDK_ROOT)/Makefile
