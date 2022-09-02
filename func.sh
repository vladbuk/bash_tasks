#!/bin/bash

uppercase () {
  echo "${1^^}";
}

[[ $# -ne 1 ]] && echo "One arg required. You use $#" && exit 1

uppercase "$1"
