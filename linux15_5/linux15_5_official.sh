#!/bin/bash

func1() {
	echo "This message is from function1"
}

func2() {
	echo "This message is from function2"
}

func3() {
	echo "This message is from function3"
}

echo "Enter a number from 1 - 3"
read n

func$n
