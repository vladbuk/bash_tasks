#!/bin/bash

for ((i=1; i<=$#; i++))
do
  j=$((i+1))
  if [[ ${!j} ]]; then
    sum=$(( ${!i} + ${!j} ))
    sumarray+=($sum)
  fi
done

sumarray+=($(( $1 + ${@: -1} )))
echo ${sumarray[@]}
