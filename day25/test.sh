#!/bin/bash

echo "Testing Day 25: Tags & Navigation..."

# Test if Java is available
if ! command -v javac &> /dev/null || ! command -v java &> /dev/null; then
    echo "❌ Java is not installed. Please install Java JDK to run this test."
    exit 1
fi

# Compile the Java files
echo "Compiling Java files..."
javac Main.java 2>compile_errors.txt

if [ $? -ne 0 ]; then
    echo "❌ Compilation failed!"
    cat compile_errors.txt
    rm -f compile_errors.txt
    exit 1
fi

# Run the Java program
echo "Running Main.java..."
java Main > output.txt 2>&1

# Check if the program ran successfully
if [ $? -ne 0 ]; then
    echo "❌ Program execution failed!"
    cat output.txt
    rm -f output.txt *.class
    exit 1
fi

# Check for key content in the output
echo "Checking output content..."

# Test 1: Check for tag concepts content
if grep -q "TAG CONCEPTS" output.txt; then
    echo "✓ Tag concepts explanation found"
else
    echo "❌ Missing tag concepts content"
    exit 1
fi

# Test 2: Check for tag generation content
if grep -q "TAG FILE GENERATION" output.txt; then
    echo "✓ Tag file generation content found"
else
    echo "❌ Missing tag file generation content"
    exit 1
fi

# Test 3: Check for navigation commands
if grep -q "NAVIGATION COMMANDS" output.txt; then
    echo "✓ Navigation commands content found"
else
    echo "❌ Missing navigation commands content"
    exit 1
fi

# Test 4: Check for advanced features
if grep -q "ADVANCED TAG FEATURES" output.txt; then
    echo "✓ Advanced tag features content found"
else
    echo "❌ Missing advanced tag features content"
    exit 1
fi

# Test 5: Check for test results section
if grep -q "TAG NAVIGATION TESTS" output.txt; then
    echo "✓ Tag navigation tests found"
else
    echo "❌ Missing tag navigation tests"
    exit 1
fi

# Test 6: Check for specific commands mentioned
if grep -q "Ctrl-\]" output.txt && grep -q "Ctrl-t" output.txt && grep -q ":tag" output.txt; then
    echo "✓ Key tag navigation commands mentioned"
else
    echo "❌ Missing key commands (Ctrl-], Ctrl-t, :tag)"
    exit 1
fi

# Test 7: Check for ctags examples
if grep -q "ctags -R" output.txt; then
    echo "✓ ctags generation examples found"
else
    echo "❌ Missing ctags generation examples"
    exit 1
fi

# Test 8: Check for class structure (multiple classes for tag navigation)
if grep -q "UserService" output.txt && grep -q "class:UserService" output.txt; then
    echo "✓ Multiple class structure for tag practice found"
else
    echo "❌ Missing multi-class structure for tag navigation"
    exit 1
fi

echo "✓ All tests passed! Day 25 challenge is working correctly."

# Clean up
rm -f output.txt compile_errors.txt *.class

echo ""
echo "=== Day 25 Complete ==="
echo "You've learned about:"
echo "• Tag file generation with ctags"
echo "• Tag navigation with Ctrl-] and Ctrl-t"
echo "• Tag stack management with :tags"
echo "• Multiple match handling with :tselect"
echo "• Preview windows and split operations"
echo "• Pattern-based tag searches"
echo ""
echo "Practice these commands in Vim to master code navigation!"