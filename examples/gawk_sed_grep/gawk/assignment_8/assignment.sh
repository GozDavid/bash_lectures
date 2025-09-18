#!/bin/bash

FILENAME_PIPE=../../material/DataFilePipeShort.txt

if ! [ -e ${FILENAME_PIPE} ]
then
    echo "${FILENAME_PIPE} does not exist" ; exit 1

elif ! [ -r ${FILENAME_PIPE} ]
then
    echo "${FILENAME_PIPE} is not readable" ; exit 2
fi

# Task: store the phone numbers (3rd column) into a variable and then display it
PHONE_LIST=$(gawk -F "|" 'NR>1 {print $3}' ${FILENAME_PIPE})
echo ${PHONE_LIST}
     
exit 0
