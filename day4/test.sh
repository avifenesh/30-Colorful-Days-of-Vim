#!/bin/bash

# Day 4: Yank, Paste & Undo/Redo Test Script

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "Node.js is not installed. Please install Node.js to run JavaScript tests."
    exit 1
fi

# Run the test
output=$(node main.js 2>&1)
exit_code=$?

# Display output
echo "$output"

# Check result
if [ $exit_code -eq 0 ]; then
    echo -e "\nDay 4 Test Passed! Great work with yank, paste, undo and redo!"
    exit 0
else
    echo -e "\nDay 4 Test Failed. Practice these commands:"
    echo "- yy: Yank (copy) line"
    echo "- p/P: Paste after/before"
    echo "- u: Undo (your best friend!)"
    echo "- Ctrl-r: Redo"
    echo ""
    echo "Remember: u (undo) is one of Vim's most important commands!"
    exit 1
fi