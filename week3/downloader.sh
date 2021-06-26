#!/bin/bash

# Take user input
echo "Enter Website or Exit"

read -p "please type a website URL to download or exit to quit : " url_info

if [[ $url_info == "exit" ]] ; then

# exit
    exit 0
 
fi

read -p "please type download location : " download_location

wget $url_info -P $download_location/



