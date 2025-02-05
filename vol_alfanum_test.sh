#!/bin/bash

# Function to calculate the volume of a rectangular prism
calculate_volume() {
    local height=$1
    local width=$2
    local length=$3
    echo $((height * width * length))
}

# Function to check if input is numeric
is_numeric() {
    local input=$1
    if [[ $input =~ ^[0-9]+$ ]]; then
        return 0
    else
        return 1
    fi
}

# Read input values from the user
read -p "Enter height: " height
read -p "Enter width: " width
read -p "Enter length: " length

# Validate inputs
if ! is_numeric "$height" || ! is_numeric "$width" || ! is_numeric "$length"; then
    echo "Test failed! Error: All inputs must be numeric values."
    exit 1
fi

# Calculate and display the volume
volume=$(calculate_volume $height $width $length)
echo "The volume of the rectangular prism is: $volume"
