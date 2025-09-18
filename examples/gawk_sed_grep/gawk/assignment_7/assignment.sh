#!/bin/bash

FILENAME_PIPE=../../material/DataFilePipeShort.txt

if ! [ -e ${FILENAME_PIPE} ]
then
    echo "${FILENAME_PIPE} does not exist" ; exit 1

elif ! [ -r ${FILENAME_PIPE} ]
then
    echo "${FILENAME_PIPE} is not readable" ; exit 2
fi

# Task: display the content of the file twice using the while loop
gawk -F "|" '{i=0 ; while(i<2) {print $0 ; i++}}' ${FILENAME_PIPE} |& tee task_1.txt

# the following code work as well using BEGIN and END blocks empty
gawk -F "|" 'BEGIN{end=2} {i=0 ; while (i<end) {print $0 ; i++}} END{}' ${FILENAME_PIPE} |& tee task_2.txt

# Task: display the content of the file twice using the for loop
gawk -F "|" '{for(i=0 ; i<2 ; i++) {print $0}}' ${FILENAME_PIPE} |& tee task_3.txt

exit 0
