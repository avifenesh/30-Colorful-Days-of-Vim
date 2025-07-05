#!/bin/bash

if diff -q lesson.py solution.py >/dev/null; then
    echo "Day 29 Test Passed!"
else
    echo "Day 29 Test Failed. Keep trying!"
fi
