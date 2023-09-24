#!bin/bash

# Write a script that takes one argument and prints it back out to stdout
# The script should generate a usage message if it is run without giving an argument

[[ -z $1 ]] && echo Thank you for using $0 && exit
echo $1
