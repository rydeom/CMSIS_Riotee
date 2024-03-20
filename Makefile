RIOTEE_SDK_ROOT ?= /Users/janstiefel/code/fork/Riotee_SDK
GNU_INSTALL_ROOT ?= /Applications/ArmGNUToolchain/13.2.Rel1/arm-none-eabi/bin/

PRJ_ROOT := .
OUTPUT_DIR := _build

# Size of the user stack in bytes. Must be multiple of 4.
RIOTEE_STACK_SIZE:= 2048
# Size of retained memory in bytes including STACK_SIZE.
RIOTEE_RAM_RETAINED_SIZE:= 8192


ifndef RIOTEE_SDK_ROOT
  $(error RIOTEE_SDK_ROOT is not set)
endif

SRC_FILES = \
  $(PRJ_ROOT)/src/main.c \
  $(PRJ_ROOT)/src/debug_log.c \
  $(PRJ_ROOT)/src/run_model.c \
  $(PRJ_ROOT)/src/model/model.c \
  $(PRJ_ROOT)/src/model/operator.c \
  $(PRJ_ROOT)/src/model/tensor.c \
  $(PRJ_ROOT)/src/model/fully_connected_utils.c \
  $(PRJ_ROOT)/src/model/utils.c 

INC_DIRS = \
  $(PRJ_ROOT)/include \
  $(PRJ_ROOT)/src/model \
  $(PRJ_ROOT)/external/CMSIS-DSP/Include \
  $(PRJ_ROOT)/external/CMSIS-NN/Include

LIB_DIRS = \
  $(PRJ_ROOT)
LIB_FILES += -lcmsis-nn -lcmsisdsp

USER_DEFINES = -DDISABLE_CAP_MONITOR
USER_DEFINES += -DARM_MATH_DSP
USER_DEFINES += -DTF_LITE_STATIC_MEMORY

include $(RIOTEE_SDK_ROOT)/Makefile
