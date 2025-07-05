#!/bin/bash

# This test script will not modify the file, but rather check if the user has interacted with the external commands.
# For this, we'll just check if the file content is unchanged, except for the date line.

# Get the current date and time in the format expected in the solution file
CURRENT_DATE=$(date "+%a %b %e %I:%M:%S %p %Z %Y")

# Replace the placeholder date in the solution file with the current date for comparison
sed -i "s/Fri Jul  5 12:34:56 PM UTC 2025/$CURRENT_DATE/g" solution.js

if diff -q lesson.js solution.js >/dev/null; then
    echo "Day 28 Test Passed!"
else
    echo "Day 28 Test Failed. Keep trying!"
fi
