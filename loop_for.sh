#!/bin/bash
#WAIT_TIME=${1:-5}
#echo $WAIT_TIME;

# 1
for i in {1..10}
do
  if [[ $i -eq 5 ]]
  then
    echo "Skipping 5"
    continue
  fi
  if [[ $i -eq 9 ]]
  then
    echo "Stopping on 9"
    break
  fi
  echo "[[[[ $i ]]]]"
done



# 2
array=( one two three four five )
for i in "${array[@]}"
do
  echo $i;
done


# 3
for (( i=1; i<=10; i++ ))
do
  echo -n "$i ";
  echo
done
