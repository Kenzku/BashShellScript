#!/bin/bash
#

echo enter the full path name of the file that you want to copy
read FILE
# back tick is not recommended as it is hard to identify in some console,
# thus, recommended to use single quote with $(), i.e. '$()'
echo using the result of '$(uname -r)'
cp $FILE /lib/modules/$(uname -r)

exit 0
