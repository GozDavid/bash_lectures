#!/bin/bash

# Context addressing

FILENAME_PIPE=../material/DataFilePipeShort.txt

if ! [ -e ${FILENAME_PIPE} ]
then
    echo "${FILENAME_PIPE} does not exist" ; exit 1

elif ! [ -r ${FILENAME_PIPE} ]
then
    echo "${FILENAME_PIPE} is not readable" ; exit 2
fi

# displaying the original file
printf "Displaying the original file ...\n\n"
cat ${FILENAME_PIPE}
printf "\n.............................\n\n"

# Task 2.1: display only the line containing the name Christopher
#           (uppercase/lowercase matters)
printf "\n...........TASK 1 .....................\n"
sed -n '/Christopher/p' ${FILENAME_PIPE} |& tee task_2.1.txt
printf ".......................................\n\n"

# Task 2.2: display only the line containing the name Christopher
#           (case ignoring)
printf "\n...........TASK 2 .....................\n"
sed -n '/[Cc]hristopher/p' ${FILENAME_PIPE} |& tee task_2.2.txt
printf ".......................................\n\n"

# Task 2.3: search the name Christopher (case ignoring)
#           and write the result on a file
printf "\n...........TASK 3 .....................\n"
sed -n '/[Cc]hristopher/w task_2.3.txt' ${FILENAME_PIPE}
printf ".......................................\n\n"

exit 0
