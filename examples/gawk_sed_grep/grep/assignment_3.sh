#!/bin/bash

# Line addressing

FILENAME=../material/CustomerData.txt

if ! [ -e ${FILENAME} ]
then
    echo "${FILENAME} does not exist" ; exit 1

elif ! [ -r ${FILENAME} ]
then
    echo "${FILENAME} is not readable" ; exit 2
fi

# Task 3.1: search for data by ignore (exclude)
#           the word 'john' (case insensitive),
#           as either a string or a substring,
printf "\n...........TASK 1 .....................\n"
grep -i -v "JOHN" ${FILENAME} |& tee task_3.1.txt
printf ".......................................\n\n"

# Task 3.2: search for the word 'john' (case insensitive)
#           displaying only the count of matches
printf "\n...........TASK 2 .....................\n"
grep -i -c "JOHN" ${FILENAME} |& tee task_3.2.txt
printf ".......................................\n\n"

# Task 3.3: search for the word 'john' (case insensitive)
#           displaying 3 lines before and 1 line after
printf "\n...........TASK 3 .....................\n"
grep -i -B 3 -A 1 "JOHN" ${FILENAME} |& tee task_3.3.txt
printf ".......................................\n\n"

# Task 3.4: search for both the words 'john' and 'amy' (case insensitive)
printf "\n...........TASK 4 .....................\n"
grep -i -e "JOHN" -e "amy" ${FILENAME} |& tee task_3.4.txt
printf ".......................................\n\n"

exit 0
