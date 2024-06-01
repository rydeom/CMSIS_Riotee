RIOTEE_SDK_ROOT ?= /Users/janstiefel/code/fork/Riotee_SDK
GNU_INSTALL_ROOT ?= /Applications/ArmGNUToolchain/13.2.Rel1/arm-none-eabi/bin/

PRJ_ROOT := .
OUTPUT_DIR := _build

# Size of the user stack in bytes. Must be multiple of 4.
RIOTEE_STACK_SIZE:= 4096
# Size of retained memory in bytes including STACK_SIZE.
RIOTEE_RAM_RETAINED_SIZE:= 40960


ifndef RIOTEE_SDK_ROOT
  $(error RIOTEE_SDK_ROOT is not set)
endif

SRC_FILES = \
  $(PRJ_ROOT)/src/main.c \
  $(PRJ_ROOT)/src/run_model.c \
  $(PRJ_ROOT)/src/kissfft/kiss_fft.c \
  $(PRJ_ROOT)/src/kissfft/kiss_fftr.c \
  $(PRJ_ROOT)/src/model/audio_preprocessor_model.c \
  $(PRJ_ROOT)/src/model/audio_preprocessor_operators.c \
  $(PRJ_ROOT)/src/model/audio_preprocessor_tensors.c \
  $(PRJ_ROOT)/src/model/micro_speech_model.c \
  $(PRJ_ROOT)/src/model/micro_speech_operators.c \
  $(PRJ_ROOT)/src/model/micro_speech_tensors.c \
  $(PRJ_ROOT)/src/model/utils/utils.c \
  $(PRJ_ROOT)/src/model/utils/fully_connected/fully_connected_utils.c \
  $(PRJ_ROOT)/src/model/utils/operators/cast.c \
  $(PRJ_ROOT)/src/model/utils/signal/signal_utils.c \
  $(PRJ_ROOT)/src/model/utils/signal/signal_window.c \
  $(PRJ_ROOT)/src/model/utils/signal/signal_fft_auto_scale.c \
  $(PRJ_ROOT)/src/model/utils/signal/signal_rfft.c \
  $(PRJ_ROOT)/src/model/utils/signal/signal_energy.c \
  $(PRJ_ROOT)/src/model/utils/signal/signal_filter_bank.c \
  $(PRJ_ROOT)/src/model/utils/signal/signal_bank_square_root.c \

INC_DIRS = \
  $(PRJ_ROOT)/include \
  $(PRJ_ROOT)/src/kissfft \
  $(PRJ_ROOT)/src/model \
  $(PRJ_ROOT)/src/model/utils \
  $(PRJ_ROOT)/src/model/utils/fully_connected \
  $(PRJ_ROOT)/src/model/utils/operators \
  $(PRJ_ROOT)/src/model/utils/signal \
  $(PRJ_ROOT)/external/CMSIS-DSP/Include \
  $(PRJ_ROOT)/external/CMSIS-NN/Include

LIB_DIRS = \
  $(PRJ_ROOT)
LIB_FILES += -lcmsis-nn -lcmsisdsp

USER_DEFINES = -DARM_MATH_DSP
USER_DEFINES += -DDISABLE_CAP_MONITOR

include $(RIOTEE_SDK_ROOT)/Makefile
