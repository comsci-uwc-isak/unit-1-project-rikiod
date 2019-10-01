#!/bin/bash

#This program enables users of the Minimal Car Rental software to create a car in the system.
#The car will be logged in maincarfile.txt. 

echo $*

plate=$1
model=$2
color=$3
passengers=$4

if [[ $# -ne 4 ]]; then
	echo "Sorry, there was an error. Next time, please enter the license plate number, the model, the color, and the number of passengers."
	exit
else 
	echo "$plate $model $color $passengers" >> RentalCarApp/db/maincarfile.txt
	echo " " >> RentalCarApp/db/$plate.txt
	echo "The car with the license plate $plate has been added."
	echo "To add another car, run this same program with the arguments plate, model, color, and passengers."
	exit
fi