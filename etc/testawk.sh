#! /bin/sh

awk -F: '{ printf "User", $1, "is really", $5 }' /etc/passwd
#awk '{ print $2, $5 }' # Print second and 5th field
#awk '{ print $1, $NF }' # Print first and last fields
