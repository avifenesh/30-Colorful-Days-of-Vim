#!/bin/bash

echo "Testing Day 24: Argument List & External Commands..."

# Test if lua is available
if ! command -v lua &> /dev/null; then
    echo "❌ Lua is not installed. Please install lua to run this test."
    exit 1
fi

# Run the main.lua file
echo "Running main.lua..."
lua main.lua > output.txt 2>&1

# Check if the script ran successfully
if [ $? -ne 0 ]; then
    echo "❌ Script execution failed!"
    cat output.txt
    rm -f output.txt
    exit 1
fi

# Check for key content in the output
echo "Checking output content..."

# Test 1: Check for argument list content
if grep -q "ARGUMENT LIST MANAGEMENT" output.txt; then
    echo "✓ Argument list management content found"
else
    echo "❌ Missing argument list management content"
    exit 1
fi

# Test 2: Check for external commands content
if grep -q "EXTERNAL COMMANDS" output.txt; then
    echo "✓ External commands content found"
else
    echo "❌ Missing external commands content"
    exit 1
fi

# Test 3: Check for text filtering examples
if grep -q "TEXT FILTERING" output.txt; then
    echo "✓ Text filtering examples found"
else
    echo "❌ Missing text filtering examples"
    exit 1
fi

# Test 4: Check for batch operations
if grep -q "BATCH OPERATIONS" output.txt; then
    echo "✓ Batch operations content found"
else
    echo "❌ Missing batch operations content"
    exit 1
fi

# Test 5: Check for test results section
if grep -q "TEST RESULTS" output.txt; then
    echo "✓ Test results section found"
else
    echo "❌ Missing test results section"
    exit 1
fi

# Test 6: Check for specific commands mentioned
if grep -q ":args" output.txt && grep -q ":argdo" output.txt && grep -q ":r !" output.txt; then
    echo "✓ Key argument list and external commands mentioned"
else
    echo "❌ Missing key commands (:args, :argdo, :r !)"
    exit 1
fi

# Test 7: Check for practical examples
if grep -q "args \*\.lua" output.txt; then
    echo "✓ Practical examples found"
else
    echo "❌ Missing practical examples"
    exit 1
fi

echo "✓ All tests passed! Day 24 challenge is working correctly."

# Clean up
rm -f output.txt

echo ""
echo "=== Day 24 Complete ==="
echo "You've learned about:"
echo "• Argument list management with :args, :argadd, :argdo"
echo "• External command execution with !command"
echo "• Reading command output with :r !command"
echo "• Text filtering with :%!command"
echo "• Batch file operations"
echo ""
echo "Practice these commands in Vim to master file management and external tool integration!"