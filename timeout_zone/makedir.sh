#!/bin/bash

# Take a suffix, create a directory and the .sh files for the Linux Foundation labs.

echo "Enter a directory suffix."
read suffix
full_string=linux$suffix
mkdir ${full_string}
cd ${full_string}
echo "Coming at you from $(pwd)"
cd ..
exit 0
