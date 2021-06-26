#!/bin/bash

# Take user input
echo "Enter Numbers"

read -p "please enter first no : " first_no

read -p "please enter second no : " second_no

#input different types of operations
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"

read -p "Enter Operation Method : " operation_req


#perform calculator operations
case $operation_req in
    1)
        result=`echo $first_no + $second_no | bc`
        result="\033[34m$result"
        ;;
    2)
        result=`echo $first_no - $second_no | bc`
        result="\033[32m$result"
        ;;
    3)
        result=`echo $first_no \* $second_no | bc`
        result="\033[31m$result"
        ;;
    4)
        # Make sure to check for zero as second number
        if [ $second_no -eq 0 ]; then
            echo "Second number is cannot be zero"
            exit 1
        fi
        result=`echo "scale=2; $first_no / $second_no" | bc`
        result="\033[35m$result"
        ;;
    *)
        echo "operation $operation_req is not valid"
        exit 1
esac

echo -e "$result"

