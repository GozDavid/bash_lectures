#!/bin/bash

myArray_num=(1 2 3 4 5)
myArray_str=("alfa" "beta" "gamma" "delta")
myArray_mix=(1 2 "three" 4 "five")

echo myArray_num = ${myArray_num[@]}
echo myArray_str = ${myArray_str[@]}
echo myArray_mix = ${myArray_mix[@]}
echo First element of numerical array ${myArray_num[0]}
echo Third element of numerical array ${myArray_num[2]}
echo First element of numerical array ${myArray_str[0]}
echo Third element of numerical array ${myArray_str[2]}
echo First element of numerical array ${myArray_mix[0]}
echo Third element of numerical array ${myArray_mix[2]}
