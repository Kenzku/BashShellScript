#!/bin/bash

COUNTER=$(( $1 * 60 ))

while [ $COUNTER -gt 0 ]
do
	echo you have $COUNTER seconds remaining
	sleep 1
	COUNTER=$((COUNTER-1))
done
