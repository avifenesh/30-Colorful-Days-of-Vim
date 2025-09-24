#!/bin/bash

# Day 8: Search & Replace Test Script

# Compile and run the test
make clean > /dev/null 2>&1
make > /dev/null 2>&1

if [ $? -ne 0 ]; then
    echo "Compilation failed! Check your syntax."
    echo "Common issues:"
    echo "- String literals need proper quotes"
    echo "- Array indices must be valid"
    exit 1
fi

# Run the test and capture output
output=$(./vim_day8)

# Check if all tests passed
if echo "$output" | grep -q "✗"; then
    echo "$output"
    echo -e "\nDay 8 Test Failed. Practice these search & replace commands:"
    echo "- /pattern: Search forward"
    echo "- ?pattern: Search backward"
    echo "- n/N: Next/previous match"
    echo "- */#: Search word under cursor"
    echo "- :s/old/new/: Replace on line"
    echo "- :%s/old/new/g: Replace globally"
    echo "- :5,10s/old/new/g: Replace in range"
    exit 1
else
    echo "$output"
    echo -e "\nDay 8 Test Passed! Search and replace mastered!"
    echo "You now have powerful text finding and modification tools."
    exit 0
fi