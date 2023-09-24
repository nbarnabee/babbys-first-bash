#!/bin/bash

echo "Enter 1 or 2, to set the environmental variable EVAR"
read ans

# Set up a return code
RC=0

if [[ $ans -eq 1 ]]; then
	export EVAR="Yes"
elif [[ $ans -eq 2 ]]; then 
	export EVAR="No"
else 
	export EVAR="Unknown"
	RC=1
fi
echo "The value of EVAR is $EVAR"
exit $RC
