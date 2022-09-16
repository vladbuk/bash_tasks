#!/bin/bash

set -x

read -t 5 -p "Enter var (you have 5 sec): " input

if [[ -z $input ]]
then
  echo -e "\n\nTime to enter value ended\n"
  exit
fi

sleep 1
echo '$input = ' $input
echo "$input = $input"
echo "$input = " $input

