#!/bin/bash

# Modify the script from the previous exercise. Make the "file_count" function accept a directory
# as an argument. Next have the function display the name of the directory followed by a colon.
# Finally, display the number of files to the screen on the next line. Call the function three times.
# First, on the "/etc" directory, next on the "/var" directory and finally on the "/usr/bin" directory.
# Example output:
# /etc: 85

function file_count()
{
    local DIR=$1

    if [ -d ${DIR} ]
    then
	
	# 'ls -p'     ---> command appends / indicator to directories
	# 'grep -v /' ---> command removes names with / character (i.e. directories)
	# 'wc -w'     ---> command counts the words
	local NUMBER_OF_FILES=$(ls -p ${DIR} | grep -v / | wc -w)

	echo -e "\n${DIR}:"
	echo -e "\t${NUMBER_OF_FILES} files"

	return 0

    else

	echo -e "\n${DIR} is not a regular directory \n"
	
	return 1
    fi
}

# get the input directory
# read -p "Enter a path> " DIR
DIRS="/etc /var /usr/bin pippo"

# check if it is a directory
for DIR in ${DIRS}
do
    file_count ${DIR}
done

exit 0
