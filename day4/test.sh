#!/bin/bash

if diff -q lesson.js solution.js >/dev/null; then
    echo "Day 4 Test Passed!"
else
    echo "Day 4 Test Failed. Keep trying!"
fi
