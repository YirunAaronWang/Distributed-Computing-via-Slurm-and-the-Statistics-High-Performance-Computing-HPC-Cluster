#!/bin/bash                                                                     
module load R/R-4.0.1
n=$SLURM_ARRAY_TASK_ID
wget http://pages.stat.wisc.edu/~jgillett/479/HPC/airlines/$n.csv.bz2
bzip2 -d $n.csv.bz2
