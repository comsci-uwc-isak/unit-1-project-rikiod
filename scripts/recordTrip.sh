#!/bin/bash

#This program enables users of the Minimal Car Rental application to record a trip with a car. 
#The trip will be logged in the car's plate.txt file.

echo $*

plate=$1
distance=$2
dateOut=$3
dateIn=$4

cd ~/Desktop/RentalCarApp/db/

#Ensuring file exists and four arguments were entered
if [[ ($# -ne 4) ]]; then
  echo "Please enter license plate number, distance (km), date out, and date in."
  cd ../db

elif [ ! -f "$1.txt" ]; then
  echo "Car doesn't exist, please try again."

#Creating plate.txt file with car's data.
else
  echo "$distance $dateOut $dateIn" >> $plate.txt
  cd ../scripts
  echo "Trip successfully recorded."
fi
