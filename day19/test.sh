#!/bin/bash

if diff -q Main.java Solution.java >/dev/null; then
    echo "Day 19 Test Passed!"
else
    echo "Day 19 Test Failed. Keep trying!"
fi
