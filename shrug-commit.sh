#!bin/dash

cd .shrug
#count=-1
# for file in */; do

#     if [[ $file =~ 'index' ]]; then
#         count=$((count + 1))
#     fi
    
# done

log="log.txt"
num=0
if [[ ! -f $log ]]; then

    echo "0 $2"

else 
    num=`wc -l <$log`
    num=`echo $num | sed 's/ *$//g'`
    echo "$num $2" >>$log 
fi

file="index$num"

cd $file
for files in *;
do
    cp $files ..
done

