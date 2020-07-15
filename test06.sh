#!/bin/sh

# Run after test05
# Index has A C

echo "This is for commit -a message">>a
./shrug-commit -a -m -"Adding new a"

echo "========== =========="

./shrug-show :a

echo "======= Expected Output====="
echo "New line a"
echo "This is for commit -a message"

echo "========== =========="

echo "This is for B">>b

./shrug-add a b c

./shrug-show :b

echo "======= Expected Output====="
echo "Committed as commit 4"
echo "New line in b"
echo "This is for B"

echo "========== =========="

echo "ANother new line for B">>b 

./shrug-commit -a -m -"Adding new b"

# check if index is updated 

./shrug-show :b

echo "======= Expected Output====="
echo "New line in b"
echo "This is for B"
echo "ANother new line for B"

