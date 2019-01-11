#!/bin/bash

variable_to_check=$1

if [[ X == X$variable_to_check ]] 
  then 
      echo “variable is empty”
 else 
      echo “variable value is $variable_to_check”
fi
