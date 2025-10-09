#!/bin/bash

#PBS -k o
#PBS -l nodes=2:ppn=32
#PBS -l walltime=300:00:00
#PBS -M NAME@student.manchester.ac.uk
#PBS -m abe
#PBS -N DW_2HDM_Z2
#PBS -j oe

module load gcc-9.3.0
module load openmpi-1.10.4-withtm

mpic++ /home/USER_DIR/mpi_evolution_2HDM_Z2.cpp -o /home/USER_DIR/mpi_evolution_2HDM_Z2
mpiexec -n 64 /home/USER_DIR/mpi_evolution_2HDM_Z2
