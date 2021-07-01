W#!/bin/bash
nvcc -arch=sm_60 ../Cuda-Scripte/intragrid.cu -o intragrid
nvcc -arch=sm_60 ../Cuda-Scripte/mullshuffle.cu -o shuffle
nvcc -arch=sm_60 ../Cuda-Scripte/only_atomic_time_messure.cu -o onlyatomics
nvcc -arch=sm_60 ../Cuda-Scripte/shared_with_atomic_time.cu -o sharedatomic
nvcc -arch=sm_60 ../Cuda-Scripte/onlyshared.cu -o onlyshared


