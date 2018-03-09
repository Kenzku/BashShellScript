#!/bin/bash


# if [ -z $1 ] is the same as test -z $1
# test or [ ] -- condition evaluation utility, check man test
# -z string     True if the length of string IS zero
if test -z $1
then
	echo you have to provide an argument with this script
	exit 1
fi

# && logical AND, || is logical OR
# also, if the first command is true, then it will run the second command
[ -z $1 ] && echo given an argument && exit 1

echo the argument is $1
