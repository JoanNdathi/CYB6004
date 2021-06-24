#!/bin/bash
read -p 'foldername : ' folder_var
read -sp 'password : ' password_var
echo
echo "foldername : $folder_var"
echo "password : $password_var"

if [[ ! -d $folder_var ]];then
    mkdir $folder_var
fi

echo $password_var | sha256sum > $folder_var/secret.txt
