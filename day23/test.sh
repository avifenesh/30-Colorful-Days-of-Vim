#!/bin/bash

if diff -q lesson.py solution.py >/dev/null; then
    echo "Day 23 Test Passed!"
else
    echo "Day 23 Test Failed. Keep trying!"
fi
