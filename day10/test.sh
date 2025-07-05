#!/bin/bash

if diff -q lesson.js solution.js >/dev/null; then
    echo "Day 10 Test Passed!"
else
    echo "Day 10 Test Failed. Keep trying!"
fi
