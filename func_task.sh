#!/bin/bash

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
