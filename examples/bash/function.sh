#! /bin/bash

# https://askubuntu.com/questions/674333/how-to-pass-an-array-as-function-argument

function copyFiles()
{
   arr=("$@")

   for i in "${arr[@]}"
      do
          echo "$i"
      done

}

array=( 'one 1' 'two 2' 'three 3' 'ad ad ad  adad ad ' )

copyFiles "${array[@]}"
