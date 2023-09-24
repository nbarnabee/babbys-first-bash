#!/bin/bash

# Ask the user for a number, which should be 1 or 2.  Any other number should return an error.
# If the number is 1, set an environmental variable to "Yes."  If it's 2, then "No"
# Export and display the variable

echo "Please enter 1 or 2"
read INPUT
if [[ $INPUT == 1 ]] ; then
	RETURN="Yes"	
elif [[ $INPUT == 2 ]]; then
	RETURN="No"
else 
	echo "Incorrect entry."
	exit 1
fi
export RETURN
echo $RETURN
exit 0

