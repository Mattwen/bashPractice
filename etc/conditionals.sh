#! /bin/sh

if [ -f "$file" ]
then
	echo $file is a regular file
elif [ -d "$file" ]
then
	echo $file is a directory
fi

if [[ ! -x "$file" ]]
then
	echo $file is NOT executable
fi
