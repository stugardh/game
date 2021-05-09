#! /bin/bash
# Title:	guessinggame.sh
# Version:	1.0
# Date:		9 May 2021
# Description:	This program will continously ask the user to quess the number of files in the current directory
#		until they guess the correct number.  The user will be informed if their guess is too high or low.
#		Once the user guesses the correct number of files in the current  directory they will be congradulated.
# Comments:	The program will include hidden files(files starting with a ".")
# Author:	"Howard E. Stugard III"
# Email:	<stugardh@gmail.com>

# This function provides the total number of files(including hidden files) in the current directory.
function number_files {

	find $1 -maxdepth 1 -type f | wc -l
}

# Assigning  the number of files in the directory to a variable
num_files=$(number_files)

# Getting initial user input
echo  Please enter the number of files you think are in this directory including hidden files?
read usrinput
echo

# Loop to check user value to number of files 
while true
do
	if [ "$num_files" -eq "$usrinput" ] 2> /dev/null
	then
		echo "Congradulatios you are correct, there are $num_files in the current directory"
		echo
		exit 0
	elif [ "$num_files" -gt "$usrinput" ] 2> /dev/null
	then
		echo "Your guess of $usrinput is too low"
		echo
	elif [ "$num_files" -lt "$usrinput" ] 2> /dev/null
	then
		echo "Your guess of $usrinput is too high"
		echo
	else
		echo "Your input of $usrinput is not valid"
		echo
	fi
	echo
	echo  Please enter the number of files you think are in this directory including hidden files?
	read usrinput
done
