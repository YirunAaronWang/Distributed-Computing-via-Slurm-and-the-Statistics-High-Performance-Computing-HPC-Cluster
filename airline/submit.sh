#!/bin/bash

mkdir slurm_out

jobId1=$(sbatch --array=1987-2008 \
		--output="slurm_out/slurm-%A_%a.out" \
		getData.sh)
jobId1=$(echo $jobId1 | sed 's/Submitted batch job //')

jobId2=$(sbatch --array=1987-2008 \
		--output="slurm_out/slurm-%A_%a.out" \
                --dependency=afterok:$jobId1 \
                jobArray.sh)
jobId2=$(echo $jobId2 | sed 's/Submitted batch job //')

jobId3=$(sbatch --output="slurm_out/slurm-%A_%a.out" \
		--dependency=afterok:$jobId2 \
                findFarest.sh)
jobId3=$(echo $jobId3 | sed 's/Submitted batch job //')
