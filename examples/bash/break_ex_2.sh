#!/bin/bash
# Breaking outer loop from inner loop
for (( a = 1; a < 5; a++ ))
do
echo “outer loop: $a”
for (( b = 1; b < 100; b++ ))
do
if [ $b -gt 4 ]
then
break      # the difference is here 
fi
echo “Inner loop: $b ”
done
done
