#!/bin/bash

# Interesting solution here
# The official one demonstrated $((...)), let, and expr
# But I don't feel the need to copy all of that.

add() {
	let answer=($1 + $2) 
}

sub() {
	let answer=($1 - $2)
}

mult() {
	let answer=($1 * $2)
}

div() {
	let answer=($1 / $2)
}

op=$1 ; arg1=$2 ; arg2=$3

#I like this conditional here; a good way to see if there are the proper # of args
[[ $# -lt 3 ]] && \
	echo "Usage: Provide an operation (a, s, m, d) and two numbers." && exit 1

if [[ $op == a ]]; then add $arg1 $arg2
elif [[ $op == s ]]; then sub $arg1 $arg2
elif [[ $op == m ]]; then mult $arg1 $arg2
elif [[ $op == d ]]; then div $arg1 $arg2
else echo $op is not a, s, m, or d.  Aborting ; exit 2
fi

echo $answer
