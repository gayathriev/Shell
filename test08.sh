#!/bin/sh

touch e f g h
./shrug-add e f h

echo "======= E in index========"
./shrug-show :e
echo "wow">e 

./shrug-commit -a -m "e should change"

echo "======= new E in index========"
./shurg-show 0:e
./shrug-add g
# g should be in index
./shrug-status