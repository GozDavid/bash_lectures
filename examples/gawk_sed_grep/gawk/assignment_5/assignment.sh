#!/bin/bash

FILENAME=../../material/Process11

if ! [ -e ${FILENAME} ]
then
    echo "${FILENAME} does not exist" ; exit 1

elif ! [ -r ${FILENAME} ]
then
    echo "${FILENAME} is not readable" ; exit 2
fi

# Task 1: pick all records where we are getting "root" in usr column
#         and display SUPERUSER On place of root
gawk '{if ($1=="root") {$1="SUPERUSER On " ; print $0}}' ${FILENAME} |& tee task_1.txt

# Task 2: pick all records where we are getting "root" in usr column
#         and display "No User" for other records where we do not have root user
gawk '{if ($1!="root") {$1="No User"} ; print $0}' ${FILENAME} |& tee task_2.txt

exit 0
