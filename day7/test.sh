#!/bin/bash

# Day 7: Visual Mode Test Script

# Check if Java is installed
if ! command -v javac &> /dev/null || ! command -v java &> /dev/null; then
    echo "Java is not installed. Please install Java to run this test."
    echo "On Ubuntu/Debian: sudo apt-get install default-jdk"
    echo "On macOS: brew install openjdk"
    exit 1
fi

# Compile the Java file
javac Main.java 2>&1

if [ $? -ne 0 ]; then
    echo "Compilation failed! Check your Java syntax."
    echo "Make sure you've correctly edited the code."
    exit 1
fi

# Run the test
output=$(java Main 2>&1)
exit_code=$?

# Display output
echo "$output"

# Check result
if [ $exit_code -eq 0 ]; then
    echo -e "\nDay 7 Test Passed! Visual mode mastery achieved!"
    echo "Visual mode techniques learned:"
    echo "- v: Character visual mode"
    echo "- V: Line visual mode"
    echo "- Ctrl-v: Block visual mode"
    echo "- Visual + operators (d/c/y) for powerful editing"
    exit 0
else
    echo -e "\nDay 7 Test Failed. Practice these visual mode commands:"
    echo "- v: Select characters"
    echo "- V: Select lines"
    echo "- Ctrl-v: Select blocks/columns"
    echo "- >/<: Indent/unindent"
    echo "- d/c/y: Delete/change/yank selection"
    echo "- gv: Reselect last selection"
    echo "- o: Switch to other end of selection"
    echo ""
    echo "Visual mode is essential for efficient text manipulation!"
    exit 1
fi