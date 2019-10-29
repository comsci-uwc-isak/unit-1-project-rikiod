#!/bin/bash

#This file creates the folder structure for the Minimal Car Rental app.

echo "Starting the installation:"
echo "Downloading on desktop..."

#Moving to the desired location.
cd /Users/rikiodahlgren/Desktop

#Create App folder.
mkdir RentalCarApp

#Moving inside the RentalCarApp folder.
cd RentalCarApp

#Creating Database folder and Scripts folder.
mkdir db
mkdir tests
cd ../SchoolWork/ISAK/G11/ComSci/process-journal-rikiod/Topic1/MinimalCarRental/RentalCarApp/
cp -r scripts /Users/rikiodahlgren/Desktop/RentalCarApp

echo "Installation complete."
exit
