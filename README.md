![CarRental](logo.png)

Car Rental Minimal App
===========================

A car rental management minimal app in Bash.

Contents
-----
  1. [Planning](#planning)
  1. [Design](#design)
  1. [Development](#development)
  1. [Evalution](#evaluation)

Planning
----------
**Defining the Problem (Topic 1.1.1):**
This problem aims to help a business owner have a comprehensive system to keep track of the tasks that a car rental service would have to perform. This includes creating new cars within the system, logging trips, and keeping statistics of the mileage of various cars. This system hopes to be as easy to use as possible so the transition is quick and easy; the system will heavily minimize the amount of work that the car rental business has to do. Since the business owner is not especially familiar with computer programs, the solution will also attempt to be very easy to install and then easy to perform actions within the program.

Design
---------
**First Sketch of the System:**
![System Diagram](SystemDiagram.png)
**Fig. 1** First sketch of the system showing the main input/output and host computer with details such as actions and organization.

Development
--------
### 1. Script to install the app
The following script creates the app folder and inside, it creates a folder for data and for scripts. 
```.sh
#!/bin/bash

#This file creates the folder structure for the Minimal Car Rental app.

echo "Starting the installation:"
echo "Type the path where you would like to install and press ENTER."
read path

#Moving to the desired location.
cd $path
#Create App folder.
mkdir RentalCarApp

#Moving inside the RentalCarApp folder.
cd RentalCarApp

#Creating Database folder and Scripts folder.
mkdir db
mkdir scripts

echo "Installation complete."
exit
```

### 1. Ideas to create a new car or record a new trip.
Inputs: plate number, model, color, number of passengers -- create a car --> output: logged in file 
Inputs: km, dates, plate of car -- record trip --> output: logged in file

1. Get inputs (either by read or with arguments)
2. Check if the number of arguments is 4, otherwise exit. if $# -eq 4; then continue, else exit
3. Write to main file with an extra line. echo "    " >> maincarfile.txt
4. Create car trip file with licenseplate.txt. echo "    " >> plate.txt


Evaluation
-----------



