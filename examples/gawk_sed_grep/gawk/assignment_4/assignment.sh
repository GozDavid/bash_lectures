#!/bin/bash

FILENAME_PIPE=../../material/Process11

if ! [ -e ${FILENAME_PIPE} ]
then
    echo "${FILENAME_PIPE} does not exist" ; exit 1

elif ! [ -r ${FILENAME_PIPE} ]
then
    echo "${FILENAME_PIPE} is not readable" ; exit 2
fi

# Task 1: pick all records where we are getting "10" anywhere in row column
gawk '/10/ {print $0}' ${FILENAME_PIPE} |& tee task_1.txt

# Task 2: pick all records where we are getting "10" anywhere in STIME column
gawk '$5 ~ /10/ {print $0}' ${FILENAME_PIPE} |& tee task_2.txt

exit 0
