#!/bin/bash

# Day 20: Autocomplete & Abbreviations - Test Script

echo "Testing Day 20: Autocomplete & Abbreviations..."

# Compile C file
if make > /dev/null 2>&1; then
    echo "✓ C file compiles successfully"
else
    echo "✗ C compilation errors"
    exit 1
fi

# Test if the file runs
if ./vim_day20 > /dev/null 2>&1; then
    echo "✓ C file runs successfully"
else
    echo "✗ C file has runtime errors"
    exit 1
fi

# Check if autocomplete-related content exists
if grep -q "Ctrl-n" main.c && grep -q "Ctrl-p" main.c; then
    echo "✓ Autocomplete commands documented"
else
    echo "✗ Missing autocomplete commands"
    exit 1
fi

# Check if abbreviation-related content exists
if grep -q ":iab" main.c && grep -q ":ab" main.c; then
    echo "✓ Abbreviation commands documented"
else
    echo "✗ Missing abbreviation commands"
    exit 1
fi

# Check if practical tasks are included
if grep -q "Task" main.c; then
    echo "✓ Practical tasks included"
else
    echo "✗ Missing practical tasks"
    exit 1
fi

# Check if both autocomplete and abbreviations are integrated
if grep -q "autocomplete" main.c && grep -q "abbreviation" main.c; then
    echo "✓ Both autocomplete and abbreviations integrated"
else
    echo "✗ Missing integration of both features"
    exit 1
fi

echo "✓ All Day 20 tests passed!"
echo ""
echo "Autocomplete & Abbreviation commands to practice:"
echo "AUTOCOMPLETE:"
echo "- Ctrl-n/Ctrl-p (next/previous completion)"
echo "- Ctrl-x Ctrl-f (filename completion)"
echo "- Ctrl-x Ctrl-l (line completion)"
echo "ABBREVIATIONS:"
echo "- :iab {lhs} {rhs} (insert mode abbreviation)"
echo "- :cab {lhs} {rhs} (command line abbreviation)"
echo "- :ab (list abbreviations)"