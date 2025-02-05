#!/bin/bash

# Source the main script
source ./rect_prism_main.sh

# Test function
test_calculate_volume() {
    local result=$(calculate_volume 2 3 4)
    local expected=24

    if [ "$result" -eq "$expected" ]; then
        echo "Testcase passed!"
    else
        echo "Testcase failed! Expected $expected but got $result."
    fi
}

# Run the test
test_calculate_volume

