#!/bin/bash

# Day 3: Delete & Change Operations Test Script

# Check if Rust is installed
if ! command -v cargo &> /dev/null; then
    echo "Rust is not installed. Please install Rust to run this test."
    exit 1
fi

# Build the project
cargo build --release > /dev/null 2>&1

if [ $? -ne 0 ]; then
    echo "Compilation failed! Check your syntax."
    echo "Make sure you've correctly edited the Rust code."
    exit 1
fi

# Run the test
output=$(cargo run --release 2>/dev/null)
exit_code=$?

# Display output
echo "$output"

# Check result
if [ $exit_code -eq 0 ]; then
    echo -e "\nDay 3 Test Passed! You've mastered delete and change operations!"
    exit 0
else
    echo -e "\nDay 3 Test Failed. Practice these commands:"
    echo "- dw: Delete word"
    echo "- cw: Change word (delete + insert mode)"
    echo "- dd: Delete line"
    echo "- cc: Change line"
    echo "- D: Delete to end of line"
    echo "- C: Change to end of line"
    echo "- x/X: Delete character forward/backward"
    exit 1
fi