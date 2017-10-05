#!/bin/bash
count=0
# start a for loop for all files specify as command argument
for file in "$@"
do
#assign files' name to the variable filename
filename=$(basename $file)
# separate sequences from sequences name and count the number of sequences
snake=$(grep '>' $file | wc -l)
#print out sequences number and files name
echo $snake $filename
# count the number of sequences
count=$(expr $count  + $snake)
done
# print out the number of sequences
echo "$count"
