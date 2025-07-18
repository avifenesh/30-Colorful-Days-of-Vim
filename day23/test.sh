#!/bin/bash

# Run the Python test
output=$(python main.py 2>&1)

if [ $? -ne 0 ]; then
    echo "Execution failed! Check your syntax."
    echo "$output"
    exit 1
fi

# Check if all tests passed
if echo "$output" | grep -q "✗"; then
    echo "$output"
    echo -e "\nDay 23 Test Failed. Keep practicing!"
    exit 1
else
    echo "$output"
    echo -e "\nDay 23 Test Passed! Python prowess proven!"
    exit 0
fi