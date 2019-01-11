#!/bin/bash

e=2
echo At beginning e = $e
function test1() {
  e=4
  echo "hello. Now in the function1 e = $e"
}
function test2() {
  local e=4
  echo "hello. Now in the function2 e = $e"
}


test1 
echo "After calling the function1 e = $e"

e=2
echo In the file before to call func2 reassign e = $e

test2 
echo "After calling the function2 e = $e"


