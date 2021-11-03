#!/bin/bash
#SBATCH --job-name RUN_TITAN
#SBATCH --account=vita
#SBATCH --reservation=VITA
#SBATCH --nodes 1
#SBATCH --ntasks-per-node=1
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --qos=gpu
#SBATCH --time 18:00:00
#SBATCH --output "out/slurm-%A_%a.log"
#SBATCH --mem=0

module load gcc/8.4.0-cuda cuda/10.2.89
echo "${@:1}"
python -u "${@:1}"