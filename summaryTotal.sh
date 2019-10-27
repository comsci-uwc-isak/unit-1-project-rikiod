#!/bin/bash
#This program will find the total distance traveled by all of the cars in the car rental system.

cd ../db

sum=0
for num in $(cat trips.txt)
    do
        ((sum+=num))
done

echo "The total distance traveled by all cars is $sum km."


