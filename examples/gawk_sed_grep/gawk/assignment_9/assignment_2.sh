#!/bin/bash

FILENAME=../../material/file2.txt

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

# clean the directory
find . -name "*.txt" -type f -delete

# Task 1: split the file into multiple files at every occurrence of the pattern START
echo "# Task 1 --------------------------------------"
gawk '{if ($1 == "START") {count++} {print > "F."count".txt"}}' ${FILENAME}
FILES=($(find . -name "*.txt" -type f -print | sort))
for FILE in ${FILES[@]}
do
    echo "File: ${FILE} ..."
    cat ${FILE}
    echo "....................."
done
echo "# Task 1 --------------------------------------"

# clean up all
find . -name "*.txt" -type f -delete

exit 0
