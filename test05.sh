#!/bin/sh

./shrug-add a c
./shrug-commit -m "should'nt commit"

echo "--------Expected output---------"
echo "nothing to commit"

echo "--------------------------------"
#shouldn't update log file

./shrug-log

echo "------------Expected Output----------"

echo "should'nt commit"
echo "A and C have changed"
echo "0 Files should be empty"
