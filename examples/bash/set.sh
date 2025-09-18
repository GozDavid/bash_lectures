#!/bin/bash

# $ help set | less

set -ex
cat File_Does_Not_Exist
echo 'The file is not in our directory!'

# set -x

# n=3
# while (( n > 0 )); do
#     ((n -= 1))
#     echo ${n}
#     sleep 1
# done
