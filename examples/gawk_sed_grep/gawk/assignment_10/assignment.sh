#!/bin/bash

FILENAME=../../material/DataFilePipeShort.txt

if ! [ -e ${FILENAME} ]
then
    echo "${FILENAME_PIPE} does not exist" ; exit 1

elif ! [ -r ${FILENAME} ]
then
    echo "${FILENAME_PIPE} is not readable" ; exit 2
fi

echo "Showing the file content ..."
cat ${FILENAME}
echo "............................"

# clean up the directory
find . -name "*.txt" -type f -delete

# Task: formatting the first three columns of the file
gawk -F "|" '{printf "%-20s |%-15s |%-15s \n", $1, $2, $3}' ${FILENAME}

exit 0
