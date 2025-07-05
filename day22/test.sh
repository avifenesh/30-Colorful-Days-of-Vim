#!/bin/bash

# This test script will not modify the file, but rather check if the user has interacted with the location list.
# For this, we'll just check if the file content is unchanged.

if diff -q lesson.js solution.js >/dev/null; then
    echo "Day 22 Test Passed!"
else
    echo "Day 22 Test Failed. Keep trying!"
fi
