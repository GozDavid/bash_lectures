#! /bin/bash

function Parameters
{
    arr=("$@")

    for el in "${arr[@]}"
    do
	echo ${el}
    done
}
