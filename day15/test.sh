#!/bin/bash

# Build and run the Rust project
cargo build --release > /dev/null 2>&1

if [ $? -ne 0 ]; then
    echo "Compilation failed! Check your syntax."
    exit 1
fi

# Run the test and capture output
output=$(cargo run --release 2>/dev/null)

# Check if all tests passed
if echo "$output" | grep -q "✗"; then
    echo "$output"
    echo -e "\nDay 15 Test Failed. Keep practicing!"
    exit 1
else
    echo "$output"
    echo -e "\nDay 15 Test Passed! Excellent Rust skills!"
    exit 0
fi