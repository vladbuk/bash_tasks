#!/bin/bash

if [[ -z $1 ]] || [[ -z $2 ]]
then
  echo "We need two non-zero arguments"
elif [[ $1 =~ $2 ]]; then echo "the \"$2\" is a substring of the \"$1\""
else
  echo "\"$2\" is not a substging of the \"$1\""
fi
