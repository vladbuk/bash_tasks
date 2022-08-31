#!/bin/bash

echo "Creating folder"
if [ -d Name_Surname ]; then
  rm -rf Name_Surname
fi
mkdir Name_Surname
ls
echo "Creating files"
touch ./Name_Surname/Name
touch ./Name_Surname/Surname
ls Name_Surname
