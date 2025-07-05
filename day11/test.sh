#!/bin/bash

if diff -q lesson.py solution.py >/dev/null; then
    echo "Day 11 Test Passed!"
else
    echo "Day 11 Test Failed. Keep trying!"
fi
