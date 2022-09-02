#!/bin/bash

# run ./func_task.sh 5 6 1 3 9
# ouput have to be:
# 26
# 37
# 2
# 10
# 82

multy () {
  m=$(( $1 * $1 ))
  echo $m
}

addone () {

  for a in $@
  do
    ma=$(multy $a)
    echo $(( $ma + 1 ))
  done
}

[[ $# -eq 0 ]] && echo "Need any numbers as args" && exit 1

addone $@
