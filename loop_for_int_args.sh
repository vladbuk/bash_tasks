#!/bin/bash

re='^-?[0-9]+$'
sum=0
for a in "${@}"
do
  if [[ $a =~ $re ]]
  then
    echo $a
    (( sum+=$a ))
  else
    echo "It needs only integer numbers" >&2
    exit 1
  fi
done

echo "Sum: $sum"
echo "Args number: $#"
echo "Rusult: $(( $sum / $# ))"
