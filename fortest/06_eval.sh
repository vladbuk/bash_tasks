#!/bin/bash

com1=echo
str1="hello world"
str2=$str1
str3=str1

eval $com1 $str2 \${$str3} ${!str3}

sum=0
for n in {1..5}
do
  eval x$n=$n
  #echo $n
  sum=$(($sum + $x$n))
done

echo $sum
