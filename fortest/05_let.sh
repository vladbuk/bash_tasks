#!/bin/bash

# let works only with integer

let a=2**10
echo $a

let b=$a/33
echo $b

echo $(($a / $b))

echo $(($a > 1000 ? 1024 : $a < 1000 ))
