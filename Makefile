SDK_ROOT ?= path/to/sdk/
GNU_INSTALL_ROOT ?= /usrb/bin/

PREFIX := "$(GNU_INSTALL_ROOT)"arm-none-eabi-
PRJ_ROOT := .
OUTPUT_DIR := _build

ifndef SDK_ROOT
  $(error SDK_ROOT is not set)
endif

SRC_FILES = \
  $(PRJ_ROOT)/src/main.c

include $(SDK_ROOT)/Makefile