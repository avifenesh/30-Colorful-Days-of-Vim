#!/bin/bash

if diff -q lesson.py solution.py >/dev/null; then
    echo "Day 17 Test Passed!"
else
    echo "Day 17 Test Failed. Keep trying!"
fi
