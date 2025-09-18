#!/bin/bash

FILENAME=../../material/matrix.txt

if ! [ -e ${FILENAME} ]
then
    echo "${FILENAME} does not exist" ; exit 1

elif ! [ -r ${FILENAME} ]
then
    echo "${FILENAME} is not readable" ; exit 2
fi

# Task: sum up the values on the 3rd column of the matrix
gawk 'BEGIN {sum=0} {sum += $3} END {print sum}' ${FILENAME}

exit 0
