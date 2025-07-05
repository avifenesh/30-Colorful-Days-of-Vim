#!/bin/bash

if diff -q lesson.py solution.py >/dev/null; then
    echo "Day 5 Test Passed!"
else
    echo "Day 5 Test Failed. Keep trying!"
fi
