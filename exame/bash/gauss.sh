#!/bin/bash

FILENAME=number.txt
if [ -f ${FILENAME} ]
then
    rm -f ${FILENAME}
    touch ${FILENAME}
fi

for ((i=1 ; i<=10 ; i++))
do
    echo $i >> ${FILENAME}
done

gawk 'BEGIN {sum=0} {sum += $1} END {print sum}' ${FILENAME}
rm -f ${FILENAME}

exit 0
