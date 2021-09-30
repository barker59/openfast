#! /bin/bash
#SBATCH --time 4:00:00
#SBATCH -A windse
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=36
#SBATCH --job-name I35_C000_S0

module purge
module load comp-intel mkl

cd Seed_0
/home/kshaler/OpenFAST_9.30.19/OpenFAST/build/glue-codes/fast-farm/openfast-farm FFarm_mod.fstf > output.txt &
wait

