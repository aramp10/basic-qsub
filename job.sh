#!/bin/bash -l
#$ -P ar-rcs
#$ -M aramp10@bu.edu
#$ -j y
#$ -l h_rt=12:00:00
#$ -pe omp 1

echo "Running job on host: $(hostname)"
echo "Current working directory: $(pwd)"
echo "Starting at: $(date)" 

# $SCC_ORCA_BIN/orca $JOB_NAME.tzvp.inp >> $SGE_O_WORKDIR/$JOB_NAME.tzvp.out

# Instructions to run this script:
# Submit the script to the job scheduler using qsub:
# qsub -N testjob job.sh

# Key details:
# Ticket #: INC20652856
