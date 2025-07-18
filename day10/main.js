/*
Welcome to Day 10 of your Vim challenge!

Today we'll learn about marks - bookmarking positions in your file.

New keys for today:
    - `ma`: Set mark 'a' at current position
    - `'a`: Jump to line of mark 'a'
    - `\`a`: Jump to exact position of mark 'a'
    - `:marks`: List all marks
    - `''`: Jump back to position before last jump

Your tasks:
1. Mark the TODO locations and complete them
2. Use marks to jump between related functions and fix them
3. Mark and fix all the ERROR comments
*/

// TODO: Set mark 'a' here and fix this function to return the sum
function addNumbers(a, b) {
    return 0;  // Fix this
}

// ERROR: This function name is wrong - should be 'multiply'
function multiplyNumbers(x, y) {
    return x + y;  // ERROR: Wrong operation
}

// TODO: Set mark 'b' here and implement string reversal
function reverseString(str) {
    return "";  // Implement this
}

// Related to addNumbers - use marks to jump back and verify consistency
function testAddition() {
    return addNumbers(5, 3) === 8;
}

// ERROR: Function name typo - should be 'findMaximum'
function findMaximun(arr) {
    return Math.max(...arr);
}

console.log("=== Vim Challenge Day 10 ===\n");

// Tests
if (addNumbers(5, 3) === 8) {
    console.log("✓ Task 1a passed!");
} else {
    console.log("✗ Task 1a failed. addNumbers not working correctly");
}

if (multiplyNumbers(4, 5) === 20) {
    console.log("✓ Task 2a passed!");
} else {
    console.log("✗ Task 2a failed. multiplyNumbers not working correctly");
}

if (reverseString("hello") === "olleh") {
    console.log("✓ Task 1b passed!");
} else {
    console.log("✗ Task 1b failed. reverseString not implemented");
}

if (typeof findMaximum === 'function') {
    console.log("✓ Task 3 passed!");
} else {
    console.log("✗ Task 3 failed. Function name not corrected");
}