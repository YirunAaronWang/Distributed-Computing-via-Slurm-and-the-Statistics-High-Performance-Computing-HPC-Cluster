#!/bin/bash
cat MSN*.csv >allMSN.csv
cat allMSN.csv | sort -t , -k5 -n | tail -1 | cut -d, -f 3,4,5  > farthest.txt

Rscript  delays.R
