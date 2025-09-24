#!/bin/bash

# Day 9: Repeat & Counts Test Script

# Check if Rust is installed
if ! command -v cargo &> /dev/null; then
    echo "Rust is not installed. Please install Rust to run this test."
    exit 1
fi

# Build the project
cargo build --release > /dev/null 2>&1

if [ $? -ne 0 ]; then
    echo "Compilation failed! Check your Rust syntax."
    echo "Make sure you've correctly edited the code."
    exit 1
fi

# Run the test
output=$(cargo run --release 2>/dev/null)
exit_code=$?

# Display output
echo "$output"

# Check result
if [ $exit_code -eq 0 ]; then
    echo -e "\nDay 9 Test Passed! Repeat and counts mastered!"
    echo "Remember:"
    echo "- . repeats your last change"
    echo "- Counts make operations exponentially faster"
    echo "- 5dd is better than d d d d d"
    exit 0
else
    echo -e "\nDay 9 Test Failed. Practice these efficiency commands:"
    echo "- .: Repeat last change"
    echo "- 3w: Move 3 words"
    echo "- 2dd: Delete 2 lines"
    echo "- 5j: Move down 5 lines"
    echo "- 3p: Paste 3 times"
    echo ""
    echo "Counts + commands = Vim efficiency!"
    exit 1
fi