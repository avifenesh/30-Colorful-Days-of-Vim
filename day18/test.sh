#!/bin/bash

# Day 18: Macros - Test Script

echo "Testing Day 18: Macros..."

# Test if the file runs
if lua main.lua > /dev/null 2>&1; then
    echo "✓ Lua file runs successfully"
else
    echo "✗ Lua file has syntax errors"
    exit 1
fi

# Check if macro-related content exists
if grep -q "macro" main.lua && grep -q "qa" main.lua; then
    echo "✓ Macro-related content found"
else
    echo "✗ Missing macro-related content"
    exit 1
fi

# Check if macro recording commands are mentioned
if grep -q "@a" main.lua && grep -q "@@" main.lua; then
    echo "✓ Macro execution commands documented"
else
    echo "✗ Missing macro execution commands"
    exit 1
fi

# Check if practical tasks are included
if grep -q "Task" main.lua; then
    echo "✓ Practical tasks included"
else
    echo "✗ Missing practical tasks"
    exit 1
fi

echo "✓ All Day 18 tests passed!"
echo ""
echo "Macro commands to practice:"
echo "- qa (record macro into register 'a')"
echo "- q (stop recording)"
echo "- @a (execute macro from register 'a')"
echo "- @@ (repeat last macro)"
echo "- 5@a (execute macro 5 times)"
echo "- :reg a (view macro contents)"