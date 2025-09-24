#!/bin/bash

# Day 6: Insert Mode Mastery Test Script

# Check if Lua is installed
if ! command -v lua &> /dev/null; then
    echo "Lua is not installed. Please install Lua to run this test."
    echo "On Ubuntu/Debian: sudo apt-get install lua5.3"
    echo "On macOS: brew install lua"
    exit 1
fi

# Run the test
output=$(lua main.lua 2>&1)
exit_code=$?

# Display output
echo "$output"

# Check result
if [ $exit_code -eq 0 ]; then
    echo -e "\nDay 6 Test Passed! Insert mode mastery achieved!"
    echo "Remember these key concepts:"
    echo "- i/a for cursor position insert"
    echo "- I/A for line start/end insert"
    echo "- o/O for new lines below/above"
    echo "- Ctrl-w/u for quick corrections"
    echo "- Ctrl-o for temporary normal mode"
    exit 0
else
    echo -e "\nDay 6 Test Failed. Practice these insert mode commands:"
    echo "- i: Insert before cursor"
    echo "- a: Append after cursor"
    echo "- I: Insert at line beginning"
    echo "- A: Append at line end"
    echo "- o: Open line below"
    echo "- O: Open line above"
    echo "- Ctrl-w: Delete word backward"
    echo "- Ctrl-u: Delete to line start"
    echo "- Ctrl-o: One normal mode command"
    echo ""
    echo "Efficient insert mode = fewer mode switches!"
    exit 1
fi