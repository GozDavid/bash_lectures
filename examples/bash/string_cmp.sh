#!/bin/bash
s1='string'
s2='String'
if [ $s1=$s2 ];
   then
      echo "s1 ('$s1') is not equal to s2 ('$s2')"
fi
if [ $s1=$s1 ];
   then
      echo "s1('$s1') is equal to s1('$s1')"
fi
