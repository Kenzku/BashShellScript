#!/bin/sh
# source

# Everything between the BLANs will be echo to the screen
# BLAH can be replaced to anything
cat << BLAH
what directory?
BLAH

# echo what directory?
# this is a "here document"

# allow your bash scripts to be interactive
# and wait for the user input, until the user press enter key
# everything the user enter will be stored in the userInput variable
read userInput

cd $userInput
pwd
ls

