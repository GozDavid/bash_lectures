#!/bin/bash

DIR_NAME=$1
printf "\n\t Dir name: ${DIR_NAME} \n"

if [[ ! -d ${DIR_NAME} ]] || [[ -z ${DIR_NAME} ]]
then
    echo "Error: ${DIR_NAME} is not a valid directory... aborting ..."
    exit 1
fi

printf "\n\t Listing all regular files: \n"
find ${DIR_NAME} -maxdepth 1 -type f -print # list all regular files

printf "\n\t Listing all directories: \n"
find ${DIR_NAME} -maxdepth 1 -type d -print # list all directories

printf "\n\t Listing empty files: \n"
find ${DIR_NAME} -maxdepth 1 -empty -print  # list all empty files

exit 0
