#!/bin/sh

# After test02

# a b c has changed in directory

./shrug-add a c
./shrug-commit -m "A and C have changed"

# check commit log, should be 

./shrug-log
# should output 

echo "======= Expected Output========="
echo "1 A and C have changed"
echo "0 Files should be empty"

