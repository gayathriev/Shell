#!bin/dash

index_num=`echo $1 | cut -d':' -f1`
file_name=`echo $1 | cut -d':' -f2`

cd .shrug

if [ -z "$index_num" ]; then

    index_num=`ls -l | grep -c ^d`
    
fi

cd index$index_num
cat $file_name
exit 1









