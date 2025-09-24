#!/bin/bash

# Day 5: Character Navigation Test Script

# Check if Python is installed
if ! command -v python3 &> /dev/null && ! command -v python &> /dev/null; then
    echo "Python is not installed. Please install Python to run this test."
    exit 1
fi

# Determine Python command
if command -v python3 &> /dev/null; then
    PYTHON_CMD="python3"
else
    PYTHON_CMD="python"
fi

# Run the test
output=$($PYTHON_CMD main.py 2>&1)
exit_code=$?

# Display output
echo "$output"

# Check result
if [ $exit_code -eq 0 ]; then
    echo -e "\nDay 5 Test Passed! You've mastered character navigation!"
    echo "Key takeaways:"
    echo "- f/F for finding characters"
    echo "- t/T for positioning before/after characters"
    echo "- % for matching brackets"
    echo "- ; and , to repeat searches"
    exit 0
else
    echo -e "\nDay 5 Test Failed. Practice these essential commands:"
    echo "- f{char}: Find next character"
    echo "- F{char}: Find previous character"
    echo "- t{char}: Till (before) next character"
    echo "- T{char}: Till previous character"
    echo "- ;: Repeat last f/F/t/T"
    echo "- ,: Repeat in opposite direction"
    echo "- %: Jump to matching bracket"
    echo ""
    echo "These are some of Vim's most powerful navigation commands!"
    exit 1
fi