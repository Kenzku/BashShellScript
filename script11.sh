#!/bin/bash
#
echo ca va?

read BLAH
# tr stands for translate
# echo hello | tr [:lower:] [:upper:]
# HELLO
# the same as echo hello | tr a-z A-Z
# but a-z does not include special characters like in Finland ÅÄÖ
BLAH=`echo $BLAH | tr a-z A-Z`
[ -z $BLAH ] && exit 1

case $BLAH in
	OUI)
	echo bien
	;;
	NON)
	echo Je vais formatter ton disque dur
	echo maintenant ca va encore pire
	;;
	*)
	echo huh?
	;;
esac
