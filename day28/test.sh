#!/bin/bash

# Run the JavaScript test
output=$(node main.js 2>&1)

if [ $? -ne 0 ]; then
    echo "Execution failed! Check your syntax."
    echo "$output"
    exit 1
fi

# Check if all tests passed
if echo "$output" | grep -q "✗"; then
    echo "$output"
    echo -e "\nDay 28 Test Failed. Keep practicing!"
    exit 1
else
    echo "$output"
    echo -e "\nDay 28 Test Passed! External command expertise!"
    exit 0
fi