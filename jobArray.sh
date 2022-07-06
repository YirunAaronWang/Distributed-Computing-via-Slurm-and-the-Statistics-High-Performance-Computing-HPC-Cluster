#!/bin/bash
n=$SLURM_ARRAY_TASK_ID

cat $n.csv | tail -n +2 | cut -d, -f4,16,17,18,19 | awk -F,  '{ if ($3=="MSN") {print $0} }' > MSN$n.csv
