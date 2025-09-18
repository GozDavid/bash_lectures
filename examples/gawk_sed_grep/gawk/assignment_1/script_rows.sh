#!/bin/bash

# Pipe separated file
FILENAME_PIPE=../../material/DataFilePipe.txt

if ! [ -e ${FILENAME_PIPE} ]
then
    echo "${FILENAME_PIPE} does not exist" ; exit 1

elif ! [ -r ${FILENAME_PIPE} ]
then
    echo "${FILENAME_PIPE} is not readable" ; exit 2
fi

# fetch any specific column data and print without displaying the header (i.e. the first row)
gawk -F "|" 'NR != 1 {print $1}' ${FILENAME_PIPE} | tee file_pipe_column.txt

# fetch only header row from the file
gawk 'NR == 1 {print $0}' ${FILENAME_PIPE} | tee file_pipe_header.txt

# fetch the first six rows without the header
gawk 'NR > 1 && NR < 7 {print $0}' ${FILENAME_PIPE} | tee file_pipe_row.txt

exit 0
