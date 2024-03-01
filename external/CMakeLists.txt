cmake_minimum_required(VERSION 3.15.6)
set(CMSIS_OPTIMIZATION_LEVEL "-Ofast" CACHE STRING "Compiler optimization level.")

# Define the project
project(CMSIS)

#add_library(cmsis STATIC)
#add_library(cmsis-dsp STATIC)

#target_compile_options(cmsis-dsp PRIVATE ${CMSIS_OPTIMIZATION_LEVEL})
#target_include_directories(cmsis-dsp PUBLIC "CMSIS-DSP/Include")

#target_include_directories(cmsis-nn PUBLIC "CMSIS-NN/Include")
include_directories(CMSIS_6/CMSIS/Core/Include)

add_subdirectory(CMSIS-NN bin_nn)
add_subdirectory(CMSIS-DSP bin_dsp)
