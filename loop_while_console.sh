#!/bin/bash

while read var1 var2
do
  if [[ -n $var2 ]] && [[ $var1 == "ls" || $var1 == "dir" ]]
  then
    echo "var1: $var1"
    echo "var2: $var2"
    ls $var2
  elif [[ -z $var2 ]] && [[ $var1 == "ls" || $var1 == "dir" ]]
  then
    ls
  fi

  case $var1 in
    ls|dir) ;;
    pwd) pwd ;;
    hi) echo "Hello $USER" ;;
    exit) exit ;;
    *) echo "You can use [ ls | dir | pwd | hi | exit ]" ;;
  esac
done
