#!/bin/bash
set -e
CURRENT_DIR=$(cd $(dirname "$0") && pwd -P)

WEEK2_DIR="$CURRENT_DIR/../week2"

# Run password check script
$WEEK2_DIR/passwordCheck.sh


if [[ $? != 0 ]]; then
    exit 1
fi

#list of menu options
options=`cat<<EOF
Select an option:\n
1.Create a folder\n
2.Copy a folder\n
3.Set a password\n
4.Use Calculator\n
5.Download a URL\n
6.Check File\n
7.Exit
EOF
`
while true ; do
echo -e "\033[34m$options\033[0m"

#Use the “case” statement to run the three other scripts: 

read -p "Please enter your option: " user_option
echo "your option is $user_option"
case $user_option in
    1)
        $WEEK2_DIR/foldermaker.sh
        ;;
    2)
        $WEEK2_DIR/foldercopier.sh
        ;;
    3)
        $WEEK2_DIR/setPassword.sh
        ;;

    4)  $CURRENT_DIR/calculator.sh
        ;;
    
    5)  $CURRENT_DIR/downloader.sh
        ;;

    6)  $CURRENT_DIR/filenames.sh
        ;;
    7)  
        exit 0
        ;;
    *)
        echo "Option provided is not valid"
       # exit 1

esac

done
