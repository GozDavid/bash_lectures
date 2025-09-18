#!/bin/bash

FILE=../material/test.txt

gawk -F, '/bag$/ {print $3}' ${FILE}

grep 'bag$' ${FILE} | gawk -F"," '{print $3}'
