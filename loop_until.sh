#!/bin/bash

counter=0
until [[ $counter -gt 10 ]]
do
  echo $counter
  sleep 0.1
  (( counter++ ))
done

until curl -Is https://mail.ru | head -n 1 | grep 200 &>/dev/null
do
  echo "mail.ru is unreachable"
  sleep 1
done
echo "mail.ru reached ok"

# df -h / | grep -v File | awk '{print $5 }' | cut -d "%" -f1 -
