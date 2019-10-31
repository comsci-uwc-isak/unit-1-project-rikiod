#!/bin/bash

#This program will find the total distance traveled by all the cars if "all" is entered.
#This program will find the total distance traveled by a certain car specified by the user (enter the license plate).

cd../db

#Ensuring correct arguments were entered.
if [ $# -ne 1 ]; then
    echo "Enter license plate number or the word all."
    exit
fi

file=$1

#If "all" was entered as an argument, finding total distance traveled by all cars.
if [ $file == all ]; then
    total=0
    #Reading file; looking at each line 
    #Looping through all txt files
    for f in *.txt;
    do
        if  [[ ($f == "maincarfile.txt") ]]; then
            continue
        fi

        while read line;
        do
          #Going through each line word by word 
          for km in $line
          do
            (( total=$km+$total ))
            break
          done
        done < "$f"
    done

    cd ../scripts
    cd scripts
    echo "The total distance traveled by all the cars was $total km."
    exit

elif [ ! -f "$file.txt" ]; then
  echo "The car, $file, doesn't exist."
  exit
fi

#Calculating total distance car specified by user.
total=0

while read line;
do
  for km in $line
  do
    (( total=$km+$total ))
    #After first cycle, loop will break
    break
  done
done < "$file.txt"

cd ../scripts
echo "The car with license plate $file traveled $total km."
