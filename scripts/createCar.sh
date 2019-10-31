#!/bin/bash

#This program enables users of the Minimal Car Rental software to create a car in the system.
#The car will be logged in maincarfile.txt. 

echo $*

#Ensuring four arguments were entered
if [[ ($# -ne 4) ]]; then
  echo "Incorrect input. Please enter license plate, model, color, and number of passengers."
  exit
fi

plate=$1
model=$2
color=$3
passengers=$4

#Putting car's info on maincarfile.txt
echo "$plate $model $color $passengers" >> ~/Desktop/RentalCarApp/db/maincarfile.txt
echo "" > ~/Desktop/RentalCarApp/db/$plate.txt
echo "Car created successfully."
