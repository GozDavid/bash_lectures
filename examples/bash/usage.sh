#!/bin/bash 
 
function display_usage()
{ 
    # echo "This script must be run with super-user privileges." 
    echo -e "\nUsage:\n$0 [arguments] \n"
#   printf "\nUsage:\n$0 [arguments] \n"
} 

# if less than two arguments supplied, display usage 
if [[ $# -le 1 ]] 
then 
    display_usage 
    exit 1
fi

echo $0 $1 $2
