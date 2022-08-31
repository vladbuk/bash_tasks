#!/usr/bin/env bash

echo "Name of the script: $0"
echo "Arguments: $@"
echo "Numbers of arguments: $#"
echo "Second arg: $2, fourth arg: $4"
[[ $2 -eq $4 ]]
echo "exit code: $?"
