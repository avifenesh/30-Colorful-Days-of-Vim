#!/bin/bash

if diff -q lesson.rs solution.rs >/dev/null; then
    echo "Day 9 Test Passed!"
else
    echo "Day 9 Test Failed. Keep trying!"
fi
