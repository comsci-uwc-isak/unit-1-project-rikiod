#!/bin/bash

#This program will backup the entirity of the database folder within the MinimalCarRental application.

location=$1
if [[ $# -ne 1 ]]; then
	echo "Sorry, there was an error."
	exit
else
	cp -a RentalCarApp/db $location
fi


