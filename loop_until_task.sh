#!/bin/bash

read -p "Enter filename: " filename
head -c 4KB /dev/urandom > $filename
let filesize=$(stat -c %s $filename)/1000

until [[ $filesize -gt 1024 ]]
do
  cat $filename > /tmp/$filename
  cat /tmp/$filename >> $filename
  let filesize=$(stat -c %s $filename)/1000
  echo "Filesize: $filesize"
done
