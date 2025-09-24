#!/bin/bash

# Test script for Day 12 - Marks challenge (Lua)

echo "Testing Day 12 - Marks (Lua)..."

# Check if lua is available
if ! command -v lua &> /dev/null; then
    echo "Error: lua is not installed"
    exit 1
fi

# Run the Lua program
echo "Running main.lua..."
lua main.lua

# The Lua script includes its own tests and will output success/failure
# We check the output to determine if tests passed
output=$(lua main.lua 2>&1)

if echo "$output" | grep -q "✓ All tests passed!"; then
    echo ""
    echo "SUCCESS: All Day 12 tests passed!"
    echo "Great work with Vim marks! You can now:"
    echo "- Set marks with 'ma', 'mb', etc."
    echo "- Jump to marks with 'a, 'b or \`a, \`b"
    echo "- Use '' to jump back and \`. for last edit"
    echo "- List marks with :marks"
    exit 0
else
    echo ""
    echo "FAILURE: Some tests failed."
    echo "Use marks to navigate efficiently:"
    echo "1. Set mark 'a' at CONFIG and add port = 8080"
    echo "2. Set mark 'b' at connect_to_database and fix the connection"
    echo "3. Set mark 'c' at validate_email and change '#' to '@'"
    echo "4. Use 'a, 'b, 'c to jump between fixes"
    echo "5. Use \`. to jump to last change"
    exit 1
fi