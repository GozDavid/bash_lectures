#!/bin/bash

display_usage() { 
     echo -e "\nUsage:\n$0 <arguments_number> [arguments] \n" 
} 

# if less than two arguments supplied, display usage 
if [ $# -le 0 ] 
  then 
    display_usage
    exit 1
fi

num_of_args=$1

if [[ X$num_of_args != X ]] 
  then
    echo "Numero di parametri = " $num_of_args
  else
    echo "Nessun parametro"
fi
 
