#!/bin/bash

for i in {0..10}
do
  if [[ $i == 5 ]]
  then
    continue
  fi

  echo $i
done
