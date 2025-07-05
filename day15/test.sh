#!/bin/bash

if diff -q lesson.rs solution.rs >/dev/null; then
    echo "Day 15 Test Passed!"
else
    echo "Day 15 Test Failed. Keep trying!"
fi
