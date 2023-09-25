#!bin/bash
# Ask for a number (1, 2, or 3) and call a function with that number in its name.
# The function should display a message with its name included.
echo "Please enter a number (1, 2, or 3):"
read func_num


function1() {
echo "You've called ${FUNCNAME[0]}"
}

function2() {
echo "You've called ${FUNCNAME[0]}"
}

function3() {
echo "You've called ${FUNCNAME[0]}"
}

if [[ ${func_num} == 1 || ${func_num} == 2 || ${func_num} == 3 ]]; then
	function$func_num
	# echo "All good here"
	exit 0
else
	echo "Invalid entry.  Please try again."
	exit 1
fi
