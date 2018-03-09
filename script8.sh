#!/bin/bash

# ^$1$ is a regular expression
# > /dev/null means no out in the screen
# cut -f first-field-by-deliminator -d deliminator
if cut -d : -f 1 /etc/passwd | grep ^$1$ > /dev/null
then
	echo $1 exists
else
	echo $1 does not exist
fi
