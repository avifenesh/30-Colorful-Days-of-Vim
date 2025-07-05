#!/bin/bash

if diff -q lesson.rs solution.rs >/dev/null; then
    echo "Day 21 Test Passed!"
else
    echo "Day 21 Test Failed. Keep trying!"
fi
