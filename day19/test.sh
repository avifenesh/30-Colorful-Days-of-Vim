#!/bin/bash

# Day 19: Folding - Test Script

echo "Testing Day 19: Folding..."

# Compile Java file
if javac Main.java 2>&1; then
    echo "✓ Java file compiles successfully"
else
    echo "✗ Java compilation errors"
    exit 1
fi

# Test if the file runs
if java Main > /dev/null 2>&1; then
    echo "✓ Java file runs successfully"
else
    echo "✗ Java file has runtime errors"
    exit 1
fi

# Check if folding-related content exists
if grep -q "fold" Main.java && grep -q "zf" Main.java; then
    echo "✓ Folding-related content found"
else
    echo "✗ Missing folding-related content"
    exit 1
fi

# Check if fold markers are present
if grep -q "{{{" Main.java && grep -q "}}}" Main.java; then
    echo "✓ Fold markers present"
else
    echo "✗ Missing fold markers"
    exit 1
fi

# Check if folding commands are documented
if grep -q "za" Main.java && grep -q "zj" Main.java; then
    echo "✓ Folding navigation commands documented"
else
    echo "✗ Missing folding navigation commands"
    exit 1
fi

echo "✓ All Day 19 tests passed!"
echo ""
echo "Folding commands to practice:"
echo "- zf{motion} (create fold)"
echo "- za (toggle fold)"
echo "- zo/zc (open/close fold)"
echo "- zj/zk (navigate folds)"
echo "- zM/zR (close/open all folds)"
echo "- :set foldmethod=marker/indent/syntax"