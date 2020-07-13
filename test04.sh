#!/bin/sh

# check if A and C have been updated 

./shrug-show :a

./shrug-show 0:a

./shrug-show :c

./shrug-show 0:c

echo "======= Expected Output ==========="
echo "New line in a"
echo "New line in c"



