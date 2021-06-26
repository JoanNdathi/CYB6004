#!/bin/bash

# Create fruit vector

myFruit=("Apple" "Mango" "Strawberry" "Orange" "Banana")

# Create the for statement

for fruit in "${myFruit[@]}"; do

    echo $fruit

done
