#!/bin/bash

if diff -q lesson.lua solution.lua >/dev/null; then
    echo "Day 24 Test Passed!"
else
    echo "Day 24 Test Failed. Keep trying!"
fi
