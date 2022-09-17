#!/bin/bash

if [[ -t 0 ]]
then
  echo input from keyboard
else
  echo input from pipeline or file
fi
