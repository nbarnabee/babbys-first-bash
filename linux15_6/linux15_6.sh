#!/bin/bash

# Write a script that will act as a simple calculator

# It should take 3 arguments: 
# 1. a letter [a, s, m, d] to specify the operation
# 2. & 3. two numbers that will be operated upon

# Each operation should have its own function

# The script should detect bad or missing input values and display the results when done.

function a() {
	let val=( $1 + $2 ); echo $val
}

function s() {
	let val=( $1 - $2 ); echo $val
}

function m() {
	let val=( $1 * $2 ); echo $val
}

function d() {
	let val=( $1 / $2 ); echo $val
}

case $1 in 
	a | s | m | d) $1 $2 $3;;
	*) echo "Invalid input.  The first argument must be a, s, m or d." ; exit 1
esac

# I'm not sure how to best test whether the second arguments are numbers, though
# So this solution doesn't quite meet requirements.
