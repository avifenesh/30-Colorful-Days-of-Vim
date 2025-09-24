#!/bin/bash

# Day 10: Text Objects Test Script

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "Node.js is not installed. Please install Node.js to run JavaScript tests."
    exit 1
fi

# Run the test
output=$(node main.js 2>&1)
exit_code=$?

# Display output
echo "$output"

# Check result
if [ $exit_code -eq 0 ]; then
    echo -e "\n🎉 Day 10 Test Passed! Text objects mastered!"
    echo ""
    echo "FOUNDATION PHASE COMPLETE!"
    echo "You've mastered all fundamental Vim operations:"
    echo "- Navigation (basic & advanced)"
    echo "- Editing (delete, change, yank)"
    echo "- Visual mode & search"
    echo "- Text objects for semantic selection"
    echo ""
    echo "You're ready for intermediate Vim skills!"
    exit 0
else
    echo -e "\nDay 10 Test Failed. Practice these text object commands:"
    echo "- iw/aw: Inner/around word"
    echo "- i\"/a\": Inner/around quotes"
    echo "- i(/a(: Inner/around parentheses"
    echo "- i{/a{: Inner/around braces"
    echo ""
    echo "Text objects + operators = powerful editing!"
    exit 1
fi