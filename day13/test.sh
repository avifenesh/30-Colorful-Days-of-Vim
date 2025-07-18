#!/bin/bash

# Compile and run the Java test
javac Main.java 2>&1

if [ $? -ne 0 ]; then
    echo "Compilation failed! Check your syntax."
    exit 1
fi

# Run the test and capture output
output=$(java Main 2>&1)

# Check if all tests passed
if echo "$output" | grep -q "✗"; then
    echo "$output"
    echo -e "\nDay 13 Test Failed. Keep practicing!"
    exit 1
else
    echo "$output"
    echo -e "\nDay 13 Test Passed! Java journey progressing!"
    exit 0
fi