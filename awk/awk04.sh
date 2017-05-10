#! /bin/bash

# Take the first and second values of colon seperated file and add a space bewteen
awk -F: -v 'OFS=  ' '{print $1, $2}' $1
