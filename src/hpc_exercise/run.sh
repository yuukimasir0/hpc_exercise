#!/bin/sh

mkdir runtest

for i in `seq 9 1 30`
do
    for j in `seq 0 1 100`
    do
        ./hpc_exercise $i >git > runtest/output_$i.txt
        sleep 3
    done
done