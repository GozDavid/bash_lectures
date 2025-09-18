#!/bin/bash

# Write a shell script that consists of a function that display the number of files in the present
# working directory. Name this function "file_count" and call it in your script.
# If you use a variable in your function, remember to make it a local variable.
# Hint: The ​wc​ utility is used to count the number of lines, words, and bytes

function file_count()
{
    # ls -p       ---> list directory contents appending / indicator to directories
    # grep -v /   ---> print lines non-matching / character
    # wc -w       ---> print the word counts
    local NUMBER_OF_FILES=$(ls -p | grep -v / | wc -w)

    echo "The number of files in the present working directory is: ${NUMBER_OF_FILES}"
}

# call 'file_count' function
file_count
