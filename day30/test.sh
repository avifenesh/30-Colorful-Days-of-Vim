#!/bin/bash

if diff -q lesson.lua solution.lua >/dev/null; then
    echo "Day 30 Test Passed!"
else
    echo "Day 30 Test Failed. Keep trying!"
fi
