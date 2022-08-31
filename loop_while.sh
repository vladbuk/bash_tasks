#!/bin/bash

i=0

while [[ $i -le 100 ]]
do
  echo -n "$i "
  (( i++ ))
  sleep 0.01
done
echo

for x in {1..10}
do
  echo -n "# "
  sleep 0.1
done
echo

while [[ $i -ge 0 ]]
do
  echo -n "$i "
  (( i-- ))
  sleep 0.01
done
echo

file=~/.bashrc
while IFS= read -r line
do
  echo  $line
  sleep 0.1
done < $file
