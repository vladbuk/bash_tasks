#!/bin/bash

folder="Name_Surname2"
file="my_file"

mkdir $folder && touch $file && echo "hello" > $folder/$file && \
cat $folder/$file || echo "Something went wrong"
