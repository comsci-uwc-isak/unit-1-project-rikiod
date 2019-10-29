#!/bin/bash

#This program enables users of the Minimal Car Rental application to record a trip with a car. 
#The trip will be logged in trips.txt

echo $*

distance=$1
startDate=$2
finishDate=$3
licensePlate=$4

if [[ $# -ne 4 ]]; then
	echo "Sorry, there was an error. Next time, please enter the distance (km), the start date, the finish date, and the license plate."
  exit
else
  cd ../db
	if [[ -f $licensePlate.txt ]]; then #Checking if the car exists or not
		echo "$distance $startDate $finishDate" >> $licensePlate".txt"
		echo "$distance $startDate $finishDate $licensePlate" >> trips.txt
		echo "The $distance km trip has been logged on the car with plate $licensePlate."
		exit
	else
		echo "Sorry, that car hasn't been created yet."
	fi
fi
