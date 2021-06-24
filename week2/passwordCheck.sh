#!/bin/bash

#Write a script named 'passwordCheck.sh' that accomplishes the following:
#Ask the user to type a secret password (hide that input).
#Check the user’s password against the hash stored in 'secret.txt'.
#If the user’s password is correct, print “Access Granted” and quit with the exit code 0.
#if the user’s password is incorrect print “Access Denied” and quit with the exit code 1.

read -sp "type the password : " PasswordInput

# read contents of stored file
stored_password="$(cat Secretpassword/secret.txt)"

# encrypt password given
encrytped_password=$(echo $PasswordInput | sha256sum)
echo $encrytped_password
if [ "$stored_password" == "$encrytped_password" ]; then
    
    echo "Access Granted"
   
    exit 0
else
    echo "Access Denied"
    exit 1
fi 
