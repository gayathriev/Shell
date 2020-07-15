#!/bin/sh

# check log

./shrug-log

echo "============= Expected Output ============"
echo "5 e should change"
echo "4 -Adding new b"
echo "3 -Adding new a"
echo "2 should'nt commit"
echo "1 A and C have changed"
echo "0 Files should empty"



echo "============= Expected Output ============"
echo "a - deleted"
echo "b - same as repo"
echo "c - same as repo"
echo "d - untracked"
echo "e - same as repo"
echo "f - same as repo"
echo "g - in index"
echo "e - same as repo"

echo "shrug-add - untracked"
echo "shrug-commit - untracked"
echo "shrug-init - untracked"
echo "shrug-log - untracked"
echo "shrug-rm - untracked"
echo "shrug-show - untracked"
echo "shrug-status - untracked"
echo "text01.txt - untracked"
echo "text010.txt - untracked"
echo "text02.txt - untracked"
echo "text020.txt - untracked"