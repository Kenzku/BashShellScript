#!/bin/bash

COUNTER=$1
# you can do numeric operation expression in $((expression))
COUNTER=$(( COUNTER * 60 ))

minusone(){
	COUNTER=$(( COUNTER - 1 ))
	# sleep 1 second
	sleep 1
}

while [ $COUNTER -gt 0 ]
do
	echo you still have $COUNTER seconds left
	# calling a function
	minusone
done

[ $COUNTER = 0 ] && echo time is up && minusone
[ $COUNTER = "-1" ] && echo you now are one second late && minusone

while true
do
    # pattern matching syntax and remove the match i.e. the first - from the left (it can be no match, and thus no removal)
	echo you now are ${COUNTER#-} seconds late
	minusone
done
