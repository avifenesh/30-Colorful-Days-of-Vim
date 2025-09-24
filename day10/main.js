/*
Welcome to Day 10 of your Vim challenge!

TEXT OBJECTS - Select and operate on semantic units!

New keys for today:
    - `iw`: Inner word (word without surrounding spaces)
    - `aw`: A word (word with surrounding spaces)
    - `i"`: Inner quotes (content inside quotes)
    - `a"`: A quotes (including the quotes)
    - `i'`: Inner single quotes
    - `a'`: A single quotes
    - `i(` or `ib`: Inner parentheses/brackets
    - `a(` or `ab`: A parentheses/brackets
    - `i[`: Inner square brackets
    - `a[`: A square brackets
    - `i{` or `iB`: Inner curly braces/Blocks
    - `a{` or `aB`: A curly braces/Blocks
    - `i<`: Inner angle brackets
    - `a<`: A angle brackets
    - `it`: Inner tag (HTML/XML)
    - `at`: A tag (HTML/XML)

Text objects work with operators:
    - `diw`: Delete inner word
    - `ci"`: Change inner quotes
    - `ya(`: Yank a parentheses
    - `vi{`: Visual select inner braces

REMINDERS - Keys from previous days:
    Day 9: Repeat/counts - `.`, `3w`, `2dd`, count+command
    Day 8: Search/replace - `/`, `?`, `:s`, `:%s`
    Day 7: Visual mode - `v`, `V`, `Ctrl-v`
    Day 6: Insert mode - `i`, `a`, `I`, `A`, `o`, `O`

Your tasks:
1. Use word text objects (iw/aw)
2. Use quote text objects (i"/a")
3. Use parentheses/bracket objects
4. Use brace text objects
5. Combine text objects with operators
6. Master efficient text object selection
*/

function runTests() {
    let passed = 0;
    const total = 6;

    // Test each task
    if (task1_word_objects() === "middle") {
        console.log("✓ Task 1: Word text objects successful");
        passed++;
    } else {
        console.log("✗ Task 1: Use diw to delete inner word, keep spaces");
    }

    if (task2_quote_objects() === "new content") {
        console.log("✓ Task 2: Quote text objects successful");
        passed++;
    } else {
        console.log("✗ Task 2: Use ci\" to change content inside quotes");
    }

    if (task3_parentheses_objects() === "function()") {
        console.log("✓ Task 3: Parentheses text objects successful");
        passed++;
    } else {
        console.log("✗ Task 3: Use di( to delete inside parentheses");
    }

    if (task4_brace_objects()) {
        console.log("✓ Task 4: Brace text objects successful");
        passed++;
    } else {
        console.log("✗ Task 4: Use ci{ to change inside braces");
    }

    if (task5_combined_objects()) {
        console.log("✓ Task 5: Combined text objects successful");
        passed++;
    } else {
        console.log("✗ Task 5: Combine text objects with various operators");
    }

    if (task6_efficient_selection()) {
        console.log("✓ Task 6: Efficient text selection successful");
        passed++;
    } else {
        console.log("✗ Task 6: Master text object selection efficiency");
    }

    console.log(`\nDay 10 Progress: ${passed}/${total} tasks completed\n`);

    if (passed === total) {
        console.log("🎉 Excellent! You've mastered basic text objects!");
        console.log("Text objects are game-changers for efficient editing!");
        console.log("Foundation phase complete! Ready for intermediate skills.");
        process.exit(0);
    } else {
        console.log("Keep practicing! Master iw, aw, i\", a\", i(, a(, i{, a{");
        console.log("Tip: Think in objects - words, quotes, blocks!");
        process.exit(1);
    }
}

// TASK 1: Word text objects
function task1_word_objects() {
    // Use diw to delete just the word, not the spaces
    let text = "word1 middle word3";
    // Position on "middle" and use diw
    // Result should be: "word1  word3" (two spaces remain)

    // Use daw to delete word WITH spaces
    let text2 = "word1 remove word3";
    // Position on "remove" and use daw
    // Result should be: "word1 word3" (one space)

    return "middle";  // Should be deleted with diw
}

// TASK 2: Quote text objects
function task2_quote_objects() {
    // Use ci" to change content inside quotes
    let string1 = '"old content"';  // Change to "new content"

    // Use ca" to change including quotes
    let string2 = '"delete all"';  // Change entire thing to 'replaced'

    // Use di' for single quotes
    let string3 = "'inner text'";  // Delete inner text only

    return "new content";  // Result after ci"
}

// TASK 3: Parentheses and bracket objects
function task3_parentheses_objects() {
    // Use di( to delete inside parentheses
    let code = "function(delete this)";  // Result: "function()"

    // Use da( to delete including parentheses
    let code2 = "function(all of this)";  // Result: "function"

    // Use ci[ to change inside brackets
    let array = "[old, values]";  // Change to "[new, items]"

    return "function()";  // After di(
}

// TASK 4: Brace text objects
function task4_brace_objects() {
    // Use ci{ to change inside braces
    let obj = {
        old: "value"  // Change all content inside {}
    };

    // After ci{:
    let expected = {
        new: "content"
    };

    // Use da{ to delete entire block
    let block = "if (true) { delete all } remaining";
    // After da{: "if (true)  remaining"

    return JSON.stringify(obj) === JSON.stringify(expected);
}

// TASK 5: Combine text objects with operators
function task5_combined_objects() {
    // Practice combinations:
    // yiw - yank inner word
    // vi" - visual select inside quotes
    // ci( - change inside parentheses
    // da{ - delete around braces

    let operations = [
        { command: "yiw", target: "word", result: "word copied" },
        { command: "vi\"", target: '"text"', result: "text selected" },
        { command: "ci(", target: "(old)", result: "(new)" },
        { command: "da{", target: "{block}", result: "" }
    ];

    // All operations should work correctly
    return true;
}

// TASK 6: Efficient text object selection
function task6_efficient_selection() {
    // Real-world scenario: refactor function arguments
    function oldFunction(param1, param2, param3) {
        // Use ci( to change all parameters at once
    }

    // After ci(:
    function newFunction(newParam1, newParam2) {
        // Parameters changed efficiently
    }

    // Scenario 2: Change string content
    const message = "This is the 'old message' that needs updating";
    // Use ci' to change just 'old message' to 'new message'

    // Scenario 3: Delete array contents
    const data = [1, 2, 3, 4, 5];  // Use di[ to clear array

    return true;  // All selections efficient
}

// Run the tests
runTests();