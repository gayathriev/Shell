#!/bin/sh

curr=`pwd`
touch a b c d
echo "a" >>test010.txt
echo "b" >>test010.txt
echo "c" >>test010.txt
./shrug-add a b c
cd .shrug
cd index
count=0
for file in *;
do
    echo "$file" >>"$curr/test01.txt"
    count=$(( count + 1 ))
done

# including test01.txt
if [ "$count" -ne 3 ]; then
    echo "ERROR: Icorrect number of files added!"
fi 

echo "correct number of files added!"

if cmp -s "$curr/test01.txt" "$curr/text010.txt"; then
    echo "Sucess! Correct FIles added"
fi
