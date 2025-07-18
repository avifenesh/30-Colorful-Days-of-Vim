/*
Welcome to Day 4 of your Vim challenge!

Today we'll learn about repeating commands and using counts.

New keys for today:
    - `.`: Repeat the last change.
    - `3w`: Move forward 3 words.
    - `5j`: Move down 5 lines.
    - `2dd`: Delete 2 lines.
    - `3x`: Delete 3 characters.

Reminder from Day 3:
    - `yy`, `p`, `P` for yanking and putting.

Your tasks:
1. Remove all the "DELETE_ME" lines from the getCleanArray function
2. Remove all number words from the getEmptyString function
*/

// Test functions
function getCleanArray() {
    const lines = [
        "Keep this line",
        "DELETE_ME",
        "DELETE_ME", 
        "DELETE_ME",
        "This line should stay",
        "DELETE_ME",
        "Final line to keep"
    ];
    
    // TASK 1: Delete all lines containing "DELETE_ME"
    return lines;
}

function getEmptyString() {
    // TASK 2: Delete all the number words to return an empty string
    return "one two three four five";
}

// Run tests
console.log("=== Vim Challenge Day 4 ===\n");

const cleanArray = getCleanArray();
const expectedArray = ["Keep this line", "This line should stay", "Final line to keep"];
const arrayPassed = JSON.stringify(cleanArray) === JSON.stringify(expectedArray);

if (arrayPassed) {
    console.log("✓ Task 1 passed!");
} else {
    console.log("✗ Task 1 failed. Expected only lines without DELETE_ME");
    console.log("  Got:", cleanArray);
}

const emptyString = getEmptyString();
if (emptyString === "") {
    console.log("✓ Task 2 passed!");
} else {
    console.log("✗ Task 2 failed. Expected empty string");
    console.log("  Got:", emptyString);
}