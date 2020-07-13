#!/bin/sh

# after test01--> a, b, c is in index

# empty a b c 

echo "New line in a" >>a
echo "New line in b" >>b
echo "New line in c" >>c

# Lines change but commit should be empty files 

./shrug-commit -m "Files should be empty"
# check if empty file is shown
./shrug-show :a>>test02.txt

if cmp -s "test02.txt" "test020.txt"; then
    echo "Yay!"
fi





