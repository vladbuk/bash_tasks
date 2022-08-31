#!/bin/bash

if [[ $# -le 2 ]]
then
  echo $@
elif [[ $# -gt 2 ]] && [[ $# -lt 5 ]]
then
  echo ${@: -1}
else
  echo "Invalig numbers of args"
fi
