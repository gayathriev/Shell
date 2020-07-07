#!bin/dash

file="log.txt"

if [ ! -f $file ]; then

    echo "log not found"

fi

cat $file