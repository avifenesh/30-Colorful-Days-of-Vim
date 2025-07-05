#!/bin/bash

if diff -q lesson.rs solution.rs >/dev/null; then
    echo "Day 3 Test Passed!"
else
    echo "Day 3 Test Failed. Keep trying!"
fi
