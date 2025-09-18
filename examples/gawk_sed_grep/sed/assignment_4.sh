#!/bin/bash

# Replace/Delete/insert content

FILENAME_PIPE=../material/File.txt

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

# Task 4.1: replace the 10000 salary only if the name is Johny
printf "\n...........TASK 1 .....................\n"
sed '/Johny/s/10000/15000/' ${FILENAME_PIPE} |& tee task_4.1.txt
printf ".......................................\n\n"

# Task 4.2: delete the line containing the name Simon
printf "\n...........TASK 2 .....................\n"
sed '/Simon/d' ${FILENAME_PIPE} | tee task_4.2.txt
printf ".......................................\n\n"

# Task 4.3: insert in the second line the sentence 'Ciao Ciao'
printf "\n...........TASK 3 .....................\n"
sed '2i Ciao Ciao' ${FILENAME_PIPE} |& tee task_4.3.txt
printf ".......................................\n\n"

exit 0
