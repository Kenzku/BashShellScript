#!/bin/bash

TODAY=$(date +%d-%m-%y)
echo $TODAY

echo the day is ${TODAY%%-*}
MONTH=${TODAY%-*}
echo the month is ${MONTH#*-}
echo the year is ${TODAY##*-}
