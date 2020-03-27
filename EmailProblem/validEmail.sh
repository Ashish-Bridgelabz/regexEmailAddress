#!/bin/bash -x
shopt -s extglob
#WE ARE TAKIING VARIABLE
emailAddress=0
#USING FUNCTION
function validEmailId() {
	read -p "Enter Email address: " emailId
	emailRegex="^[a-z]{1}\w*([_+.-]\w+)*@\w+.[a-zA-Z]{2,3}$""
	if [[ $emailId =~ $emailRegex ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi
}
#CALLING THE FUNCTION
validEmailId

