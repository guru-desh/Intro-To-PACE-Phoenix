#!/bin/bash

#SBATCH --job-name=Task
#SBATCH --account=gts-ts133
#SBATCH --nodes=1 --ntasks-per-node=12 --gres=gpu:V100:1
#SBATCH --time=2:00:00
#SBATCH --qos=inferno
#SBATCH --output=./logs/task.out
#SBATCH --mail-type=NONE

cd $SLURM_SUBMIT_DIR

singularity exec \
--bind SOURCE:DESTINATION_IN_CONTAINER
/storage/coda1/p-ts133/0/containers/copycat-gpu-cuda10.2-cudnn7.sif \
sh task.sh 