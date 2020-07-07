#!/bin/dash

cd .shrug
count=0
directory="index"
while true; do
	subD=$directory$count
    
    if [ ! -d "$subD" ]; then

        mkdir ./$subD
        break

    fi
    count=$((count + 1))
done



cd $subD
path=`pwd`
cd ..
cd ..

for file in "$@"; 
do
	# if [[ "$file" =~ ^[a-zA-Z0-9] ]]; then
		
		case $input in
            *[![:alnum:]_.-]*)
            ;;
        *)
            cp $file $path
        esac
		
	# fi
done
