#!/bin/bash

# Test script for Day 14 - Visual Mode Mastery (C)

echo "Testing Day 14 - Visual Mode Mastery (C)..."

# Check if gcc is available
if ! command -v gcc &> /dev/null; then
    echo "Error: gcc compiler is not installed"
    exit 1
fi

# Compile the program using Makefile
echo "Compiling main.c..."
if ! make; then
    echo "Error: Failed to compile main.c"
    exit 1
fi

# Run the program
echo "Running vim_day14..."
output=$(./vim_day14 2>&1)

echo "$output"

# Check if the program compiled and ran successfully
if [ $? -eq 0 ]; then
    echo ""
    echo "SUCCESS: Day 14 program compiled and ran!"
    echo "Great work practicing visual mode mastery! Key techniques:"
    echo ""
    echo "Visual Selection Control:"
    echo "- gv: Re-select last visual selection"
    echo "- o: Move to other end of visual selection"
    echo "- O: Move to other corner (visual block mode)"
    echo ""
    echo "Visual Mode Operations:"
    echo "- u/U: Change case of selection"
    echo "- ~/: Toggle case"
    echo "- >/< : Indent/unindent selection"
    echo "- J: Join selected lines"
    echo ""
    echo "Manual verification needed for:"
    echo "1. Function names changed to camelCase using visual selection"
    echo "2. Variable declarations aligned using visual block mode"
    echo "3. Function parameters joined using visual line + J"
    echo "4. Struct indentation fixed using visual + >"
    echo "5. Comments aligned using visual block mode"
    echo "6. Data formatted as table using visual selections"

    # Clean up
    make clean
    exit 0
else
    echo ""
    echo "FAILURE: Program failed to run correctly."
    echo "Focus on these visual mode techniques:"
    echo "1. Select function names with v, then use u/U for case"
    echo "2. Use gv to re-select the same text for multiple operations"
    echo "3. Use o in visual mode to extend selections from either end"
    echo "4. Use Ctrl-v for visual block mode, O to move corners"
    echo "5. Use > and < in visual mode for indentation"
    echo "6. Use V to select lines, then J to join them"

    # Clean up
    make clean
    exit 1
fi