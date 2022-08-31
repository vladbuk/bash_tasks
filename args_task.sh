#!/bin/bash

i=1
for a in $@
do
  echo "Arg$i: $a"
  (( i++ ))
done

argarray=($@) # copy args array to var
for (( i=1; i<$#; i++ ))
do
  sum=$(( ${argarray[$i-1]} + ${argarray[$i]} ))
  echo -n "$sum "
done
echo $(( $1 + ${@: -1} )) # echo sum of first and last args
