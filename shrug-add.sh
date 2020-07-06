#!/bin/dash

cd .shrug

directory="index"
if [ ! -d "$directory" ]; then

    mkdir ./$directory
fi

cd $directory
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
