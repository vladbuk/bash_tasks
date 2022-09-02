#!/bin/bash

set -ex

git pull
git status
git add .
if [[ $1 -ne 1 ]]
then
 echo "use only one agr - commit message"
 exit 1
elif [[ -z "$#" ]]
then
  echo "add commit message as arg"
  exit
else
  git commit -m "$1"
fi
git push
