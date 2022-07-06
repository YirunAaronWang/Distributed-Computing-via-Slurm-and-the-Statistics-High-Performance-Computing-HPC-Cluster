#!/bin/bash                                                                     

cat out1.csv out2.csv out3.csv  > out.csv
cat out.csv |sort -n | head -1 >out
