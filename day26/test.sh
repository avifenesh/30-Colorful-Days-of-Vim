#!/bin/bash

echo "Testing Day 26: Ranges & Command-line Magic..."

# Test if gcc is available
if ! command -v gcc &> /dev/null; then
    echo "❌ GCC is not installed. Please install GCC to run this test."
    exit 1
fi

# Compile the C program
echo "Compiling main.c..."
make clean > /dev/null 2>&1
make > compile_output.txt 2>&1

if [ $? -ne 0 ]; then
    echo "❌ Compilation failed!"
    cat compile_output.txt
    rm -f compile_output.txt
    exit 1
fi

# Run the program
echo "Running vim_day26..."
./vim_day26 > output.txt 2>&1

# Check if the program ran successfully
if [ $? -ne 0 ]; then
    echo "❌ Program execution failed!"
    cat output.txt
    rm -f output.txt compile_output.txt
    exit 1
fi

# Check for key content in the output
echo "Checking output content..."

# Test 1: Check for basic range syntax content
if grep -q "BASIC RANGE SYNTAX" output.txt; then
    echo "✓ Basic range syntax content found"
else
    echo "❌ Missing basic range syntax content"
    exit 1
fi

# Test 2: Check for pattern-based ranges content
if grep -q "PATTERN-BASED RANGES" output.txt; then
    echo "✓ Pattern-based ranges content found"
else
    echo "❌ Missing pattern-based ranges content"
    exit 1
fi

# Test 3: Check for visual ranges content
if grep -q "VISUAL SELECTION RANGES" output.txt; then
    echo "✓ Visual selection ranges content found"
else
    echo "❌ Missing visual selection ranges content"
    exit 1
fi

# Test 4: Check for advanced operations
if grep -q "ADVANCED RANGE OPERATIONS" output.txt; then
    echo "✓ Advanced range operations content found"
else
    echo "❌ Missing advanced range operations content"
    exit 1
fi

# Test 5: Check for global commands
if grep -q "GLOBAL COMMANDS WITH RANGES" output.txt; then
    echo "✓ Global commands with ranges content found"
else
    echo "❌ Missing global commands content"
    exit 1
fi

# Test 6: Check for test results section
if grep -q "TESTING RANGE KNOWLEDGE" output.txt; then
    echo "✓ Range knowledge testing found"
else
    echo "❌ Missing range knowledge testing"
    exit 1
fi

# Test 7: Check for specific range syntax mentioned
if grep -q ":10,20" output.txt && grep -q ".,+5" output.txt && grep -q "'<,'>" output.txt; then
    echo "✓ Key range syntax examples mentioned"
else
    echo "❌ Missing key range syntax (:10,20, .,+5, :'<,'>)"
    exit 1
fi

# Test 8: Check for pattern ranges
if grep -q ":/pattern/" output.txt && grep -q "/start/,/end/" output.txt; then
    echo "✓ Pattern-based range examples found"
else
    echo "❌ Missing pattern-based range examples"
    exit 1
fi

# Test 9: Check for global command examples
if grep -q ":g/" output.txt && grep -q ":v/" output.txt; then
    echo "✓ Global command examples found"
else
    echo "❌ Missing global command examples"
    exit 1
fi

# Test 10: Check for sample functions (practice code in examples)
if grep -q "TODO" output.txt && grep -q "FIXME" output.txt; then
    echo "✓ Sample practice code examples found"
else
    echo "❌ Missing sample practice code examples"
    exit 1
fi

echo "✓ All tests passed! Day 26 challenge is working correctly."

# Clean up
rm -f output.txt compile_output.txt
make clean > /dev/null 2>&1

echo ""
echo "=== Day 26 Complete ==="
echo "You've learned about:"
echo "• Basic range syntax (:10,20, .,+5, :%)"
echo "• Pattern-based ranges (:/start/,/end/)"
echo "• Visual selection ranges (:'<,'>)"
echo "• Advanced range operations (move, copy, filter)"
echo "• Global commands with ranges (:g/pattern/command)"
echo "• Mark-based ranges ('a,'b)"
echo ""
echo "Practice these commands in Vim to master precise text manipulation!"