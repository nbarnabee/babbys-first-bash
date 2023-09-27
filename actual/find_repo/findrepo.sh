#!/bin/bash
if [[ -z $1 ]] ; then
	echo "Usage: findrepo.sh <string>" 
	echo "Search the current directory & subdirectories for a match"
	exit 1
fi
find -maxdepth 3 -type d > directory_view.txt ; grep $1 directory_view.txt
