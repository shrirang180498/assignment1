#!/bin/bash

# Function to calculate the volume of a rectangular prism
calculate_volume() {
    local height=$1
    local width=$2
    local length=$3
    echo $((height * width * length))
}

# Read input values from the user
read -p "Enter height: " height
read -p "Enter width: " width
read -p "Enter length: " length

# Calculate and display the volume
volume=$(calculate_volume $height $width $length)
echo "The volume of the rectangular prism is: $volume"
