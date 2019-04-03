#!/bin/bash

#SBATCH -N 3
#SBATCH -n 24
#SBATCH -p asinghargpu1
#SBATCH -q asinghargpu1
#SBATCH --gres=gpu:GTX1080:1
#SBATCH -o ./slurm

module load namd/2.13b1-cuda

namd2 +p16 ../config/Mdff-step1.namd > ../output/Mdff-step1.log
