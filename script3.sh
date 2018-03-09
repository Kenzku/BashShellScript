#!/bin/bash
#
# ...

echo "The first argument is $1."
echo "The second argument is $2."
# if number has more than 1 digit, use {}, otherwise, the rest digit will be treated like a string
echo "This is not the 10th argument: $10."
echo "The 10th argument is ${10}"
echo "The 11th argument is ${11}"
# remove the first argument in the input parameter
# afterwards, the second argument in the input parameter will be come $1
# shift is an old command and probably will not be part of bash any more
shift
echo "Now the first argument has changed to: " $1
# $0 is a special case, and it is the file name: ./script3.sh
# use back slash \ to escape $0 or other argument as a part of the string
echo "\$0 is $0"

# for-each all arguments in the input parameter
# Noted, the $1 is removed by the shift in the case
for i in $@
do
  echo hello $i how are you doing
done

# use bash -x ./script3.sh can debug all the lines
# Or, just to run: ./script3.sh a b c d e f g h i j k l m n