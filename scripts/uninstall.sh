#!/bin/bash

#This program deletes the RentalCarApp and all of it's data.

echo "This program deletes the RentalCarApp and all of it's data."
echo "Would you like to continue with deleting the program? Answer Y or N and press ENTER:"
read answer 

if [[ $answer == Y ]]; then
	echo "Moving forward with deleting the program..."
	cd /Users/rikiodahlgren/Desktop/
	rm -rf RentalCarApp
	echo "Successfully deleted."
	exit
else
	echo "The RentalCarApp will not be deleted."
	exit
fi


