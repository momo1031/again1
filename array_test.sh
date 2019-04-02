#!/bin/bash
declare -a words
i=0
while [ 1 ]
do
  read -p "Enter a new word: " go
  if [ $go == "quit" ]
  then
    exit 1
  elif [ $go == "list" ]
  then
    echo ${words[*]}
  else
    words[i] = go
    let i=i+1
    echo "Length:" $i
   fi
done
