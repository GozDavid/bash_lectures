#!/bin/bash

# Comma separated file
FILENAME_COMMA=../../material/DataFileComma.txt

if ! [ -e ${FILENAME_COMMA} ]
then
    echo "${FILENAME_COMMA} does not exist" ; exit 1

elif ! [ -r ${FILENAME_COMMA} ]
then
    echo "${FILENAME_COMMA} is not readable" ; exit 2
fi

# fetch any specific column data and print
gawk -F "," '{print $1}' ${FILENAME_COMMA} |& tee file_comma_column.txt

# fetch more than one column with comma separator
gawk -F "," '{print $1 " , " $3 " , " $6}' ${FILENAME_COMMA} |& tee file_comma_columns_comma.txt

# fetch complete data from file (all rows and all columns)
gawk -F "," '{print $0}' ${FILENAME_COMMA} |& tee file_comma_complete.txt

exit 0
