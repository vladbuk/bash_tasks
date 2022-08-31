#!/bin/bash

echo "What do you like, apples or pears?"
read fruit

case $fruit in
  apples) echo "Great, we too" ;;
  pears) echo "Good choice!" ;;
  *) echo "We don't understand" ;;
esac
