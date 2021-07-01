#!/bin/bash
module load compiler/gcc/8.1.0
module load nvidia/cuda/11.3

nvcc -arch=sm_60 ../Cuda-Scripte/intragrid.cu -o intragrid
nvcc -arch=sm_60 ../Cuda-Scripte/mullshuffle.cu -o shuffle
nvcc -arch=sm_60 ../Cuda-Scripte/only_atomic_time_messure.cu -o onlyatomic
nvcc -arch=sm_60 ../Cuda-Scripte/shared_with_atomic_time.cu -o sharedatomic
nvcc -arch=sm_60 ../Cuda-Scripte/onlyshared.cu -o onlyshared


