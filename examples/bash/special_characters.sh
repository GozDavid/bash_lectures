#!/bin/bash

# commented command
echo "commented command result:"
ls -l # this lists all file in the current dir
echo "---------------------------"

# Two commands on the same row
echo "Two commands on the same row; whoami+echo :"
whoami; echo "Second commandi"
echo "---------------------------"


# echo of a string containing one or more escaped characters
echo "string containing  dollar escaped characters is:"
echo "This is the dollar sign \$"
echo "---------------------------"

# Make the echo of a command (like ls or pwd) output 
echo "Make the echo of pwd output:"
echo "My current work dir is: `pwd`"
echo "---------------------------"

# Use wildcard to list all files starting with ‘a’ in your directory
echo "Use wildcard to list all files starting with ‘a’ in your directory:"
ls -l a*
echo "---------------------------"

