#!/bin/bash

# Replace content

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

# Task 3.1: replace the name Christopher (ignoring case)
#           with Adam
printf "\n...........TASK 1 .....................\n"
sed 's/[Cc]hristopher/Adam/' ${FILENAME_PIPE} |& tee task_3.1.txt
printf ".......................................\n\n"

# Task 3.2: replace the name Christopher (ignoring case) with Adam
#           and Jasmine with Lucie using one command
printf "\n...........TASK 2 .....................\n"
sed -e 's/[Cc]hristopher/Adam/' -e 's/Jasmine/Lucie/' ${FILENAME_PIPE} |& tee task_3.2.txt
printf ".......................................\n\n"

exit 0
