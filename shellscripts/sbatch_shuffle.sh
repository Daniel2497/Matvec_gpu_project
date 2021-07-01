#!/bin/bash
#SBATCH --job-name=matmul-blocked-benchmark
#SBATCH --partition=gpu_p100
#SBATCH --nodes=1
#SBATCH --mem=16GB
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=1
#SBATCH --ntasks=1
#SBATCH --time=00:05:00
./shuffle.sh
