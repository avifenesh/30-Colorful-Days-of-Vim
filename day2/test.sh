#!/bin/bash

# Day 2: Advanced Navigation Test Script

# Compile and run the test
make clean > /dev/null 2>&1
make > /dev/null 2>&1

if [ $? -ne 0 ]; then
    echo "Compilation failed! Check your syntax."
    echo "Common issues:"
    echo "- Missing closing bracket in check_brackets()"
    echo "- Variable naming in process_data()"
    exit 1
fi

# Verify the variable rename task
if command -v rg >/dev/null 2>&1; then
    if rg -q "wrong_name" main.c; then
        echo "The identifier 'wrong_name' is still present. Use G/{/} commands to rename it to 'data_size'."
        exit 1
    fi
else
    if grep -q "wrong_name" main.c; then
        echo "The identifier 'wrong_name' is still present. Use G/{/} commands to rename it to 'data_size'."
        exit 1
    fi
fi

# Run the test and capture output
output=$(./vim_day2)

# Check if all tests passed
if echo "$output" | grep -q "✗"; then
    echo "$output"
    echo -e "\nDay 2 Test Failed. Practice these navigation commands:"
    echo "- gg: Go to first line"
    echo "- G: Go to last line"
    echo "- 35G: Go to line 35"
    echo "- Ctrl-d/Ctrl-u: Half page down/up"
    echo "- H/M/L: High/Middle/Low on screen"
    echo "- {/}: Previous/next paragraph"
    echo "- %: Jump to matching bracket"
    exit 1
else
    echo "$output"
    echo -e "\nDay 2 Test Passed! You've mastered advanced navigation!"
    echo "You can now:"
    echo "- Jump anywhere in a file instantly"
    echo "- Navigate by pages and screens"
    echo "- Move through code structure efficiently"
    exit 0
fi
