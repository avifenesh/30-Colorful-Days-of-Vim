#!/bin/bash

if diff -q lesson.rs solution.rs >/dev/null; then
    echo "Day 27 Test Passed!"
else
    echo "Day 27 Test Failed. Keep trying!"
fi
