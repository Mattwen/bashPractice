#! /bin/sh

# print the first column, only uuid
awk '/UUID/ {print $1}' /etc/fstab
