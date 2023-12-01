#!/bin/sh

# compile your file and test all given test cases

for i in `seq 5`;
do 
gcc -std=c99 -o smm smm.c   # change to your file name 
input="in${i}.txt"
file="out$(printf "%02d" $i).txt"
compare_file="out${i}.txt"
./smm < $input > $file
diff -s $file $compare_file
rm $file
done
