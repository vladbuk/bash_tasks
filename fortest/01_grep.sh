#!/bin/bash

if [[ -n $1 && -n $2 ]]
then
    grep -F -v $1 $2 > ${2}.tmp && mv ${2}.tmp $2
    cat $2
else
    echo "Use first arg for word and second arg for filename"
fi
