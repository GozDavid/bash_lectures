#!/bin/bash

FILENAME_PIPE=../../material/Process11

if ! [ -e ${FILENAME_PIPE} ]
then
    echo "${FILENAME_PIPE} does not exist" ; exit 1

elif ! [ -r ${FILENAME_PIPE} ]
then
    echo "${FILENAME_PIPE} is not readable" ; exit 2
fi

# Task 1: Display complete row data where your UID is root
gawk '$1=="root" {print $0}' ${FILENAME_PIPE} |& tee task_1.txt

# Task 2: Display complete row data where your UID is root or PID > 1000
gawk '$1=="root" || $2>1000 {print $0}' ${FILENAME_PIPE} |& tee task_2.txt

# Task 3: Display complete row data where your UID is root and PID > 1000
gawk '$1=="root" && $2>1000 {print $0}' ${FILENAME_PIPE} |& tee task_3.txt

exit 0
