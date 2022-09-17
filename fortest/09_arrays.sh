#!/bin/bash

arr1=()
echo ${arr1[@]}

arr2=(2 4 8 "hello" 3.6)
echo ${arr2[@]}

process() {
  for i in {1..5}
  do
    echo -n " . "
    sleep 0.2
  done
  echo " "
}

names=("Alex" "John" "Mark" "Kate" "Mary" "Helen")
echo ${names[@]}
echo "names lenth:" ${#names[@]}

for i in ${!names[@]}
do
  echo "Item $i: ${names[$i]}, lenth: ${#names[$i]}, ${names[$i]^^}"
done

emails=("Alex1@gmail.com" "JohnWeek@bing.com" "MarkZUK@fb.com" "KatKat@i.ua" "m.arilo@live.com" "HelloN@revo.org")
echo ${emails[@]}
echo "Adding emails"
process
emails+=("Maria@ukt.net" "ivanBulba@i.ua")

i=0
for item in ${emails[@]}
do
  echo "Item $i: ${item,,}"
  ((i++))
done

# show filesize in dir
ls_arr=($(ls))

total=0
for x in ${ls_arr[@]}
do
  size=$(stat -c%s $x)
  echo "Size of $x: "${size}
  ((total+=size))
done
echo "Total filesize: "${total}
