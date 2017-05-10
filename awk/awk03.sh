#! /bin/bash

# Print the first column of a file where the delimnator is a (:) instead of white space
sudo awk 'BEGIN { FS=":"; }
{ print $1; }' $1

