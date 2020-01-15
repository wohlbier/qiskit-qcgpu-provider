#!/bin/bash
#SBATCH --partition=GPU-AI
#SBATCH --nodes=1
#SBATCH --gres=gpu:volta32:1
#SBATCH --time=8:00:00

source /etc/profile.d/modules.sh

module load singularity/3.5.0

WORK=$SCRATCH/qiskit-qcgpu-provider
cd $WORK
rm -f benchmark_data.csv
date
singularity exec --nv $SCRATCH/qiskit.sif $WORK/run.sh
date
