#!/bin/bash

# Day 17: Tabs - Test Script

echo "Testing Day 17: Tabs..."

# Test if the file runs
if python main.py > /dev/null 2>&1; then
    echo "✓ Python file runs successfully"
else
    echo "✗ Python file has syntax errors"
    exit 1
fi

# Check if tab-related content exists
if grep -q "tab" main.py && grep -q ":tabnew" main.py; then
    echo "✓ Tab-related content found"
else
    echo "✗ Missing tab-related content"
    exit 1
fi

# Check if tab navigation commands are mentioned
if grep -q "gt" main.py && grep -q "gT" main.py; then
    echo "✓ Tab navigation commands documented"
else
    echo "✗ Missing tab navigation commands"
    exit 1
fi

# Check if practical tasks are included
if grep -q "Task" main.py; then
    echo "✓ Practical tasks included"
else
    echo "✗ Missing practical tasks"
    exit 1
fi

echo "✓ All Day 17 tests passed!"
echo ""
echo "Tab management commands to practice:"
echo "- :tabnew (create new tab)"
echo "- gt (next tab)"
echo "- gT (previous tab)"
echo "- 3gt (go to tab 3)"
echo "- :tabclose (close current tab)"
echo "- :tabmove N (move to position N)"
echo "- :tabs (list all tabs)"