#! /bin/bash

# easier sed program
# Replace all values with another in a text file

usage() {
	echo "Usage replace [add] [replace] <file>"
}
if [ $# -ne 3 ]
then
	usage
	exit 1
else
	sed -e "s/$1/$2/g" $3
fi
