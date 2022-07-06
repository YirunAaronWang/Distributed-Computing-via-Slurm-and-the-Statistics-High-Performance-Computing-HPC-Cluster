#!/bin/bash
#rm -rf out
#mkdir out

n=$SLURM_ARRAY_TASK_ID

awk -F "," '$11==3{print $7}' mtcars$n.csv > out$n.csv
