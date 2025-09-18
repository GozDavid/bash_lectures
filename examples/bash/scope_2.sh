#!/bin/bash


# local e=2
echo "At beginning e = $e"

function test1()
{
  local f=3, e=5
  echo "hello. Now in the function1 f = $f"
  echo "hello. Now in the function1 e = $e"
}

test1
echo $f
