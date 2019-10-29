#!/bin/bash

#This program will backup the entirity of the database folder within the MinimalCarRental application.

location=$1

if [[ $# -ne 1 ]]; then
	echo "Sorry, there was an error with backing up your files."
	exit
else
	cp -a /Users/rikiodahlgren/Desktop/RentalCarApp/db $location
	echo "Successfully backed up into $location."
fi

