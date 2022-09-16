#!/bin/bash

if [[ -n $1 && -n $2 ]]
then
    grep -F -v $1 $2 > ${2}.edited
    cat $2 ${2}.edited
else
    echo "Use first arg for word and second arg for filename"
fi

# You can also use: sed -i '/word/d' poem.txt
