#!/bin/bash

DIR_FILENAME=../material

# Task 1: display only the name of the files that
#         contain the 'christopher' (case insensitive)
printf "\n...........TASK 1 .....................\n"
grep -i -l "CHRISTOPHER" ${DIR_FILENAME}/* |& tee task_1.txt
printf ".......................................\n\n"

exit 0
