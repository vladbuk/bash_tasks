#!/bin/bash

if [[ -z $2 ]] || [[ -n $3 ]]
then
  echo "you need to set exactly 2 parameters"
  exit 1
fi
