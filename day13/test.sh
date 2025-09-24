#!/bin/bash

# Test script for Day 13 - Registers challenge (Java)

echo "Testing Day 13 - Registers (Java)..."

# Check if javac and java are available
if ! command -v javac &> /dev/null; then
    echo "Error: javac (Java compiler) is not installed"
    exit 1
fi

if ! command -v java &> /dev/null; then
    echo "Error: java runtime is not installed"
    exit 1
fi

# Compile the Java program
echo "Compiling Main.java..."
if ! javac Main.java; then
    echo "Error: Failed to compile Main.java"
    exit 1
fi

# Run the Java program
echo "Running Main..."
output=$(java Main 2>&1)

echo "$output"

# Check if all tests passed
if echo "$output" | grep -q "✓ All tests passed!"; then
    echo ""
    echo "SUCCESS: All Day 13 tests passed!"
    echo "Great work with Vim registers! You can now:"
    echo "- Store text in named registers with \"ay, \"by, etc."
    echo "- Paste from specific registers with \"ap, \"bp"
    echo "- Use black hole register \"_d to delete without affecting clipboard"
    echo "- Append to registers with uppercase \"Ay, \"By"
    echo "- Access numbered registers \"1-\"9 for recent deletions"
    echo "- View all registers with :reg"

    # Clean up compiled files
    rm -f *.class
    exit 0
else
    echo ""
    echo "FAILURE: Some tests failed."
    echo "Practice with registers:"
    echo "1. Store config values in registers a, b, c with \"ay, \"by, \"cy"
    echo "2. Delete DEBUG comments with \"_dd (black hole register)"
    echo "3. Collect method parts in register d using \"dy and \"dp"
    echo "4. Append error messages to register E with \"Ey"
    echo "5. Delete and recover the important method using numbered registers"
    echo "6. Collect import statements in register i for reorganization"
    echo ""
    echo "Use :reg to see all registers, and \"xp to paste from register x"

    # Clean up compiled files
    rm -f *.class
    exit 1
fi