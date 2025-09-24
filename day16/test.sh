#!/bin/bash

# Day 16: Windows - Test Script

echo "Testing Day 16: Windows..."

# Test if the file runs
if node main.js > /dev/null 2>&1; then
    echo "✓ JavaScript file runs successfully"
else
    echo "✗ JavaScript file has syntax errors"
    exit 1
fi

# Check if window-related content exists
if grep -q "Window" main.js && grep -q "split" main.js; then
    echo "✓ Window-related content found"
else
    echo "✗ Missing window-related content"
    exit 1
fi

# Check if Ctrl-w commands are mentioned
if grep -q "Ctrl-w" main.js; then
    echo "✓ Ctrl-w commands documented"
else
    echo "✗ Missing Ctrl-w command documentation"
    exit 1
fi

# Check if practical tasks are included
if grep -q "Task" main.js; then
    echo "✓ Practical tasks included"
else
    echo "✗ Missing practical tasks"
    exit 1
fi

echo "✓ All Day 16 tests passed!"
echo ""
echo "Window management commands to practice:"
echo "- :split (horizontal split)"
echo "- :vsplit (vertical split)"
echo "- Ctrl-w w (move to next window)"
echo "- Ctrl-w h/j/k/l (directional movement)"
echo "- Ctrl-w = (equalize windows)"
echo "- Ctrl-w _ (maximize height)"
echo "- Ctrl-w | (maximize width)"