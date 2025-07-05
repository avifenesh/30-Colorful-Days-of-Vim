#!/bin/bash

if diff -q lesson.lua solution.lua >/dev/null; then
    echo "Day 6 Test Passed!"
else
    echo "Day 6 Test Failed. Keep trying!"
fi
