#!/bin/bash

set -e

[[ $# -ne 1 ]] && echo -e "Use gitsync.sh \"commit message\"" && exit 1

git pull
git status
git add .
git commit -m "$1"
git push
git status
