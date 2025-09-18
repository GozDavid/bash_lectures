#!/bin/bash

FILENAME=../../material/file1.txt

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

# Task 1: split the file into multiple files, one for each item,
#         i.e, all records pertaining to Item1 into a file, records of Item2 into another, etc.
echo "# Task 1 --------------------------------------"
gawk -F "," '{print $0 > $1".txt"}' ${FILENAME}
FILES=($(find . -name "*.txt" -type f -print))
for FILE in ${FILES[@]}
do
    printf "\t File: ${FILE} ...\n"
    cat ${FILE}
    printf "\t .....................\n"
done
echo "# Task 1 --------------------------------------"

# Task 2: split the files so that all the items whose value is greater than 500 are in the file "500G.txt"
echo "# Task 2 --------------------------------------"
gawk -F "," '{if ($2 > 500) print $0 > "500G.txt" ; else print $0 > "500L.txt"}' ${FILENAME}
echo "File: 500L.txt ..."
cat 500L.txt
echo "File: 500G.txt ..."
cat 500G.txt
echo "# Task 2 --------------------------------------"

# Task 3: do the same as task 2 using the gawk ternary operator
echo "# Task 3 --------------------------------------"
gawk -F "," '{x = ($2 > 500) ? "500G.txt" : "500L.txt" ; print > x}' ${FILENAME}
echo "File: 500L.txt ..."
cat 500L.txt
echo "File: 500G.txt ..."
cat 500G.txt
echo "# Task 3 --------------------------------------"

# clean up all
find . -name "*.txt" -type f -delete

exit 0
