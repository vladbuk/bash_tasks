#!/bin/bash
i=1
sum=0
for a in $@
do
  echo "Arg$i: $a"
  (( i++ ))
done

for ((i=1; i<=$#; i++))
do
  echo -n $$i
done
