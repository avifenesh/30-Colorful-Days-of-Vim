#!/bin/bash

# Run the Lua test
output=$(lua main.lua 2>&1)

if [ $? -ne 0 ]; then
    echo "Execution failed! Check your syntax."
    echo "$output"
    exit 1
fi

# Check if all tests passed
if echo "$output" | grep -q "✗"; then
    echo "$output"
    echo -e "\nDay 18 Test Failed. Keep practicing!"
    exit 1
else
    echo "$output"
    echo -e "\nDay 18 Test Passed! Lua skills leveling up!"
    exit 0
fi