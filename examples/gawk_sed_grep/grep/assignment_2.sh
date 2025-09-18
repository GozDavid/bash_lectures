#!/bin/bash

FILENAME=../material/CustomerData.txt

if ! [ -e ${FILENAME} ]
then
    echo "${FILENAME} does not exist" ; exit 1

elif ! [ -r ${FILENAME} ]
then
    echo "${FILENAME} is not readable" ; exit 2
fi

# Task 2: search data by matching exact word 'john' (case insensitive),
#         i.e. not as a substring
printf "\n...........TASK 2 .....................\n"
grep -i -w "JOHN" ${FILENAME} |& tee task_2.txt
printf ".......................................\n\n"

exit 0
