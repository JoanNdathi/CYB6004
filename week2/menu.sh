#!/bin/bash

CURRENT_DIR=$(cd $(dirname "$0") && pwd -P)

# Run password check script
$CURRENT_DIR/passwordCheck.sh

if [[ $? == 0 ]]; then
    echo "1.Create a folder"
    echo "2.Copy a folder"
    echo "3.Set a password"
fi
#Write a  'read' statement to get the user’s choice, and a “case” statement  that will make decisions based on that choice. 

read -p "Please enter your option: " user_option
echo "your option is $user_option"


#Use the “case” statement to run the three other scripts: 

case $user_option in
    1)
        $CURRENT_DIR/foldermaker.sh
        ;;
    2)
        $CURRENT_DIR/foldercopier.sh
        ;;
    3)
        $CURRENT_DIR/setPassword.sh
        ;;
    *)
        echo "Option provided is not valid"
        exit 1
esac