#! /bin/sh

# finduer -- see if user named by first arugment is logged in

if [ $# -ne 1 ]
then
	echo Usage: finduser username >&2
	exit 1
fi

who | grep $1

