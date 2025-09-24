/*
Welcome to Day 4 of your Vim challenge!

YANK, PASTE & UNDO/REDO - Master copying and history management!

New keys for today:
    - `yy`: Yank (copy) the current line
    - `p`: Put (paste) after cursor/line
    - `P`: Put (paste) before cursor/line
    - `yw`: Yank word
    - `yb`: Yank backward word
    - `ye`: Yank to end of word
    - `y$`: Yank to end of line
    - `y0`: Yank to beginning of line
    - `u`: Undo last change (CRITICAL command!)
    - `Ctrl-r`: Redo (undo the undo)
    - `:earlier 5m`: Go back 5 minutes in time
    - `:later 5m`: Go forward 5 minutes in time

REMINDERS - Keys from previous days:
    Day 3: Delete/change - `dw`, `cw`, `dd`, `cc`, `D`, `C`
    Day 2: Advanced navigation - `gg`, `G`, `Ctrl-d/u`, `H/M/L`
    Day 1: Basic movement - `w`, `b`, `e`, `0`, `$`

Your tasks:
1. Copy and rearrange lines using yy and p/P
2. Practice undo/redo with multiple changes
3. Copy parts of lines and combine them
4. Use undo tree to recover from mistakes
*/

// TASK 1: Use yy and p to duplicate this function
function originalFunction() {
    return "ORIGINAL";
}
// Duplicate the above function here and rename it to 'duplicateFunction'

// TASK 2: Rearrange these lines in alphabetical order using yy, dd, and p
// START REARRANGE
const zebra = "zebra";
const apple = "apple";
const mango = "mango";
const banana = "banana";
// END REARRANGE

// TASK 3: Practice undo and redo
// Make these changes in order, then use u to undo back to step 1, then Ctrl-r to redo
function undoRedoTest() {
    let step = 1;  // Step 1: Original
    // Change to: let step = 2;  // Step 2: First change
    // Change to: let step = 3;  // Step 3: Second change
    // Use u twice to go back to step 1
    // Use Ctrl-r to go forward to step 2
    // Final should be: let step = 2;
    return step;
}

// TASK 4: Copy parts of strings and combine them
// Use y$ to copy from cursor to end of line, then paste to create new variable
const firstPart = "Hello, ";
const secondPart = "World!";
// Create: const combined = "Hello, World!"; by yanking and pasting parts

// TASK 5: Fix this array using yank and paste
// Some items are in wrong positions - fix using yy, dd, p
const items = [
    "item1",
    "WRONG_POSITION_item3",
    "item2",
    "item4"
];
// Should be: item1, item2, item3, item4

// TASK 6: Undo/Redo challenge
// This function has multiple errors. Fix them all, then practice undo/redo
function multipleErrors() {
    const wrong1 = "FIX_ME";  // Should be "FIXED"
    const wrong2 = 100;       // Should be 200
    const wrong3 = false;     // Should be true

    return {
        first: wrong1,
        second: wrong2,
        third: wrong3
    };
}

// Test functions - Don't modify below this line
function runTests() {
    let passed = 0;
    let total = 6;

    // Test 1: Check if duplicateFunction exists
    if (typeof duplicateFunction === 'function' && duplicateFunction() === "ORIGINAL") {
        console.log("✓ Task 1: Function duplicated successfully");
        passed++;
    } else {
        console.log("✗ Task 1: Duplicate originalFunction and rename to duplicateFunction");
    }

    // Test 2: Check alphabetical order
    const vars = [apple, banana, mango, zebra];
    if (vars.join(",") === "apple,banana,mango,zebra") {
        console.log("✓ Task 2: Variables in alphabetical order");
        passed++;
    } else {
        console.log("✗ Task 2: Rearrange variables in alphabetical order");
    }

    // Test 3: Check undo/redo result
    if (undoRedoTest() === 2) {
        console.log("✓ Task 3: Undo/redo practiced correctly");
        passed++;
    } else {
        console.log("✗ Task 3: Should return 2 after undo/redo practice");
    }

    // Test 4: Check combined string
    if (typeof combined !== 'undefined' && combined === "Hello, World!") {
        console.log("✓ Task 4: Strings combined successfully");
        passed++;
    } else {
        console.log("✗ Task 4: Create combined variable with 'Hello, World!'");
    }

    // Test 5: Check array order
    const expected = ["item1", "item2", "item3", "item4"];
    let arrayCorrect = items.length === 4 &&
                      items[0] === "item1" &&
                      items[1] === "item2" &&
                      items[2] === "item3" &&
                      items[3] === "item4";

    if (arrayCorrect) {
        console.log("✓ Task 5: Array items in correct order");
        passed++;
    } else {
        console.log("✗ Task 5: Fix array order (remove WRONG_POSITION_ prefix)");
    }

    // Test 6: Check multiple errors fixed
    const result = multipleErrors();
    if (result.first === "FIXED" && result.second === 200 && result.third === true) {
        console.log("✓ Task 6: All errors fixed");
        passed++;
    } else {
        console.log("✗ Task 6: Fix all values in multipleErrors function");
    }

    console.log(`\nDay 4 Progress: ${passed}/${total} tasks completed\n`);

    if (passed === total) {
        console.log("🎉 Excellent! You've mastered yank, paste, undo and redo!");
        console.log("Remember: 'u' is your safety net - you can always undo mistakes!");
        process.exit(0);
    } else {
        console.log("Keep practicing! Master yy, p, P, u, and Ctrl-r");
        console.log("Tip: Undo (u) and redo (Ctrl-r) are essential for safe editing");
        process.exit(1);
    }
}

// Run tests
runTests();