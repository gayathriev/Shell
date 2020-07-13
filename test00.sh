#!/bin/sh
./shrug-init
directory=`pwd`

if [ -d "$directory/.shrug" ]; then
    echo "Success! Shrug repository exists"
    exit 1
fi
echo "Error! No Repository Found"



