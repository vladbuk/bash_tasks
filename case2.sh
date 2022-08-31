#!/bin/bash

echo "Do you like bash?"
read answer

case $answer in
  [Yy] | [Yy][Ee][Ss]) echo "Right answer!" ;;
  [Nn] | [Nn][Oo]) echo "Bad answer!" ;;
  *) echo "Use only Y[es] or N[o]" ;;
esac
