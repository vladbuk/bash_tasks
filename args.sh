#!/bin/bash

echo "Numbers of args: $#"
echo 'Args in array: $@'
for i in $@
do
  echo $i
done

echo 'Args in quoted array: "$@"'
for i in "$@"
do
  echo $i
done


echo 'Args in string: $*'
for i in $*
do
  echo $i
done

echo 'Args in quoted string: "$*"'
for i in "$*"
do
  echo $i
done


#a=$@
#echo ${@: -1} # last arg
#echo ${!#}
#echo ${#}
#echo ${@: -1}
