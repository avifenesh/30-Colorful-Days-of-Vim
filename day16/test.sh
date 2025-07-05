#!/bin/bash

if diff -q lesson.js solution.js >/dev/null; then
    echo "Day 16 Test Passed!"
else
    echo "Day 16 Test Failed. Keep trying!"
fi
