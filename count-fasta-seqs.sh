#!/bin/bash
count=0
for file in "$@"
do
filename=$(basename $file)
snake=$(grep '>' $file | wc -l)
echo $snake $filename
count=$(expr $count  + $snake)
done
echo "$count"
