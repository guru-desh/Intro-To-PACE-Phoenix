#!/bin/bash

#SBATCH --job-name=Job-Array-Template
#SBATCH --account=gts-ts133
#SBATCH --nodes=1 --ntasks-per-node=24
#SBATCH --time=4:00:00
#SBATCH --qos=inferno
#SBATCH --output=logs/Task%a.out
#SBATCH --mail-type=NONE
#SBATCH --array=1-100

cd $SLURM_SUBMIT_DIR

apptainer exec --nv \
--bind SOURCE:DESTINATION
/storage/coda1/p-ts133/0/containers/copycat-gpu-cuda10.2-cudnn7.sif \
sh run_task.sh 