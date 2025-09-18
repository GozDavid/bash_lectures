#!/bin/bash

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

# Task 1.1: display the 3rd row multiple times
printf "\n...........TASK 1 .....................\n"
sed '3p' ${FILENAME_PIPE} |& tee task_1.1.txt
printf ".......................................\n\n"

# Task 1.2: display only the 3rd line
printf "\n...........TASK 2 .....................\n"
sed -n '3p' ${FILENAME_PIPE} |& tee task_1.2.txt
printf ".......................................\n\n"

# Task 1.3: display only the last line without
#           specifying the number of that line
printf "\n...........TASK 3 .....................\n"
sed -n '$p' ${FILENAME_PIPE} |& tee task_1.3.txt
printf ".......................................\n\n"

# Task 1.4: display only the lines in the range [2,4]
printf "\n...........TASK 4 .....................\n"
sed -n '2,4p' ${FILENAME_PIPE} |& tee task_1.4.txt
printf ".......................................\n\n"

# Task 1.5: do not display the 3rd line
printf "\n...........TASK 5 .....................\n"
sed -n '3!p' ${FILENAME_PIPE} |& tee task_1.5.txt
printf ".......................................\n\n"

# Task 1.6: do not display the lines in the range [2,3]
printf "\n...........TASK 6 .....................\n"
sed -n '2,3!p' ${FILENAME_PIPE} |& tee task_1.6.txt
printf ".......................................\n\n"

exit 0
