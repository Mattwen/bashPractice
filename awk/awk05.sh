#! /bin/bash
# Take a regular line by line text file and turn into a CSV document
# awk -F: -v 'ORS=, ' '{print $1}' $1
# example matt, wenger, joe, smo,
# Better way to do this, and also cut off the last byte of data (,) comma
awk 'BEGIN { FS=":";}{ORS=","}{ print $1; }' $1 | head --bytes -1

