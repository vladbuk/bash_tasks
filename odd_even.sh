#!/bin/bash

# if the number of letters in the argument is odd, 
# outputs the message "Odd", 
# else if the number of letters is even - outputs "Even"


if (( ${#1} % 2 != 0 ))
then
  echo "Odd"
else
  echo "Even"
fi

if [[ $2 -gt 10 ]]
then
  echo "arg2 greater then 10"
fi
