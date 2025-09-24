#!/bin/bash

# Day 11: Advanced Text Objects Test Script

# Check if Python is installed
if ! command -v python3 &> /dev/null && ! command -v python &> /dev/null; then
    echo "Python is not installed. Please install Python to run this test."
    exit 1
fi

# Determine Python command
if command -v python3 &> /dev/null; then
    PYTHON_CMD="python3"
else
    PYTHON_CMD="python"
fi

# Run the test
output=$($PYTHON_CMD main.py 2>&1)
exit_code=$?

# Display output
echo "$output"

# Check result
if [ $exit_code -eq 0 ]; then
    echo -e "\nDay 11 Test Passed! You've mastered advanced text objects!"
    echo "Key takeaways:"
    echo "- ip/ap for paragraph objects"
    echo "- is/as for sentence objects"
    echo "- it/at for HTML/XML tag objects"
    echo "- i>/a> and i</a< for angle brackets"
    echo "- i\`/a\` for backtick objects"
    echo "- Combine with operators (d, c, y, v)"
    exit 0
else
    echo -e "\nDay 11 Test Failed. Practice these advanced text objects:"
    echo "- ip: Inner paragraph (content only)"
    echo "- ap: A paragraph (including blank lines)"
    echo "- is: Inner sentence"
    echo "- as: A sentence (including trailing space)"
    echo "- it: Inner tag (HTML/XML content)"
    echo "- at: A tag (including the tags)"
    echo "- i>/i<: Inner angle brackets"
    echo "- a>/a<: A angle brackets (including brackets)"
    echo "- i\`: Inner backticks"
    echo "- a\`: A backticks (including backticks)"
    echo ""
    echo "These text objects are incredibly powerful when combined with operators!"
    exit 1
fi