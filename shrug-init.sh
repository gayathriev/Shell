#!/bin/dash

directory=".shrug"

if [ ! -d "$directory" ]; then
    
    mkdir ./$directory
    echo "Initialised empty shrug repository in .shrug"
else 
    echo "shrug-init: error: .shrug already exists"
fi 

exit 0
