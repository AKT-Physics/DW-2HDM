#!/bin/bash

#SBATCH --job-name=3D_scaling_1
#SBATCH --output=/home/athomas/out_3D_scaling.txt

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32
#SBATCH --time=400:00:00

module load openmpi410-gcc730
module load gcc7.3.0


mpic++ /home/athomas/DW_2HDM/mpi_evolution_2HDM_Z2_3D_scaling.cpp -o /home/athomas/DW_2HDM/Executables/mpi_evolution_2HDM_Z2_3D_scaling_1
mpiexec -n 32 /home/athomas/DW_2HDM/Executables/mpi_evolution_2HDM_Z2_3D_scaling_1