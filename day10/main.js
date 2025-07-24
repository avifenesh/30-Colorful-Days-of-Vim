/*
Welcome to Day 10 of your Vim challenge!

Today we'll learn about marks - bookmarking positions in your file.

New keys for today:
    - `ma`: Set mark 'a' at current position
    - `'a`: Jump to line of mark 'a'
    - `\`a`: Jump to exact position of mark 'a'
    - `:marks`: List all marks
    - `''`: Jump back to position before last jump

REMINDERS - Keys from previous days:
    Day 9: Text objects - `iw`, `aw`, `i"`, `a"`, `i(`, `a(` (combine with d, c, y!)
    Day 8: Macros - `qa` (record to a), `q` (stop), `@a` (play), `@@` (repeat)
    Day 7: Replace - `:%s/old/new/g`
    Day 6: Visual mode - `v`, `V`, `Ctrl-v`
    Day 3: Yank/paste - `yy`, `p`, `P`

Your tasks:
1. Mark the TODO locations and complete them
2. Use marks to jump between related functions and fix them
3. Mark and fix all the ERROR comments
*/

// TODO: Set mark 'a' here and fix this function to return the sum
function addNumbers(a, b) {
  return a - b; // Fix this
}

// ERROR: This function name is wrong - should be 'multiply'
function multiply(x, y) {
  return x + y; // ERROR: Wrong operation
}

// TODO: Set mark 'b' here and implement string reversal
function reverseString(str) {
  // TODO: Implement string reversal
  return str;
}

// Related to addNumbers - use marks to jump back and verify consistency
function testAddition() {
  return addNumbers(5, 3) === 8;
}

// ERROR: Function name typo - should be 'findMaximum'
function findMaxium(arr) {
  return Math.max(...arr);
}

console.log("=== Vim Challenge Day 10 ===\n");

// Tests
if (addNumbers(5, 3) === 8) {
  console.log("✓ Task 1a passed!");
} else {
  console.log("✗ Task 1a failed. addNumbers not working correctly");
}

if (multiply(4, 5) === 20) {
  console.log("✓ Task 2a passed!");
} else {
  console.log("✗ Task 2a failed. multiplyNumbers not working correctly");
}

if (reverseString("hello") === "olleh") {
  console.log("✓ Task 1b passed!");
} else {
  console.log("✗ Task 1b failed. reverseString not implemented");
}

if (typeof findMaximum === "function") {
  console.log("✓ Task 3 passed!");
} else {
  console.log("✗ Task 3 failed. Function name not corrected");
}
