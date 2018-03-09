#!/bin/bash
#
# pattern match is looking for the match and remove the match
# ${variable-name pattern} no space between the variable name and the pattern
# to test, use /usr/bin/blah as argument to this script/

# $1 is the first argument provided when running the script
# then #*/ is the pattern matching, */ means anything before
# # is left to right
# single # with */, is looking for the FIRST / AND anything in front of it, and remove the match
# double # with */, is looking for the LAST / AND anything in front of it, and remove the match
filename=${1##*/}
echo 'filename=${1##*/}'
echo "The name of the file is $filename"
# % is right to left
# % /* is looking for the right most / AND anything on the right of the /, and remove the match
# %% /* is looking for the left most / AND anything on the right of the /, and remove the match
directoryname=${1%/*}
echo 'directoryname=${1%/*}'
echo "the name of the directory is $directoryname"
