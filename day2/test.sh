#!/bin/bash

# Compile and run the test
make clean > /dev/null 2>&1
make > /dev/null 2>&1

if [ $? -ne 0 ]; then
    echo "Compilation failed! Check your syntax."
    exit 1
fi

# Run the test and capture output
output=$(./vim_day2)

# Check if all tests passed
if echo "$output" | grep -q "✗"; then
    echo "$output"
    echo -e "\nDay 2 Test Failed. Keep practicing!"
    exit 1
else
    echo "$output"
    echo -e "\nDay 2 Test Passed! Great work!"
    exit 0
fi