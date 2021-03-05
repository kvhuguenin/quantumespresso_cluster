#!/bin/bash
#BATCH --job-name=str0
#SBATCH --get-user-env
#SBATCH --output=./_scheduler-stdout0.txt
#SBATCH --error=./_scheduler-stderr0.txt
#SBATCH --nodes=3
#SBATCH --ntasks 28
#SBATCH --time=25:00:00



set +e
source /etc/bashrc

module load intel intel-mkl intel-mpi quantum-espresso/6.4-mpi

srun /ssoft/spack/cornalin/v1/opt/spack/linux-rhel7-x86_E5v4_Mellanox/intel-17.0.2/espresso-6.1.0-bjl3uaoh6q6jx6myueknih7ku7vgw5co/bin/pw.x  -nk 4 < pw.in > pw.out

