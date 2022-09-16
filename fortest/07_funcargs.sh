#!/bin/bash

echo "Script name = "$0
echo "PID = "$$

myfunc() {
  for i in "$@"
  do
    echo $i
  done
}

function myfunc2 {
  for i in "$*"
  do
    echo $i
  done
}

if [[ $# == 2 ]]
then
  myfunc $1 $2
  myfunc2 $1 $2
else
  echo "We need 2 args"
fi
