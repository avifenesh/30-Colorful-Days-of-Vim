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
    const { text, text2 } = task1_word_objects();
    if (text === "word1  word3" && text2 === "word1 word3") {
        console.log("✓ Task 1: Word text objects successful");
        passed++;
    } else {
        console.log("✗ Task 1: Use diw on 'middle' and daw on 'remove'");
    }

    const { string1, string2, string3 } = task2_quote_objects();
    if (string1 === '"new content"' && string2 === "'replaced'" && string3 === "''") {
        console.log("✓ Task 2: Quote text objects successful");
        passed++;
    } else {
        console.log("✗ Task 2: Use ci\"/ca\"/di' to fix the strings");
    }

    const { code, code2, array } = task3_parentheses_objects();
    if (code === "function()" && code2 === "function" && array === "[new, items]") {
        console.log("✓ Task 3: Parentheses text objects successful");
        passed++;
    } else {
        console.log("✗ Task 3: Use di(/da(/ci[ on the sample strings");
    }

    const { obj, expected, block } = task4_brace_objects();
    if (JSON.stringify(obj) === JSON.stringify(expected) && block === "if (true)  remaining") {
        console.log("✓ Task 4: Brace text objects successful");
        passed++;
    } else {
        console.log("✗ Task 4: Use ci{ and da{ to edit the brace examples");
    }

    const operations = task5_combined_objects();
    const task5Passed = operations.every((op) => {
        switch (op.command) {
            case "yiw":
                return op.result === "word";
            case 'vi"':
                return op.result === 'text';
            case "ci(":
                return op.result === "(new)";
            case "da{":
                return op.result === "";
            default:
                return false;
        }
    });
    if (task5Passed) {
        console.log("✓ Task 5: Combined text objects successful");
        passed++;
    } else {
        console.log("✗ Task 5: Update the results column using the suggested commands");
    }

    const efficiency = task6_efficient_selection();
    if (
        efficiency.oldFunctionParams === 2 &&
        efficiency.newFunctionParams === 2 &&
        efficiency.message.includes("'new message'") &&
        efficiency.dataLength === 0
    ) {
        console.log("✓ Task 6: Efficient text selection successful");
        passed++;
    } else {
        console.log("✗ Task 6: Adjust parameters, message, and array as instructed");
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
    // Result should end up as: "word1  word3"

    // Use daw to delete word WITH surrounding whitespace
    let text2 = "word1 remove word3";
    // Result should end up as: "word1 word3"

    return { text, text2 };
}

// TASK 2: Quote text objects
function task2_quote_objects() {
    // Use ci" to change content inside quotes
    let string1 = '"old content"';  // Change to "new content"

    // Use ca" to change including quotes
    let string2 = '"delete all"';  // Change entire thing to 'replaced'

    // Use di' for single quotes
    let string3 = "'inner text'";  // Delete inner text only

    return { string1, string2, string3 };
}

// TASK 3: Parentheses and bracket objects
function task3_parentheses_objects() {
    // Use di( to delete inside parentheses
    let code = "function(delete this)";  // Result: "function()"

    // Use da( to delete including parentheses
    let code2 = "function(all of this)";  // Result: "function"

    // Use ci[ to change inside brackets
    let array = "[old, values]";  // Change to "[new, items]"

    return { code, code2, array };
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

    return { obj, expected, block };
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
        { command: 'vi"', target: '"text"', result: "text selected" },
        { command: "ci(", target: "(old)", result: "(old)" },
        { command: "da{", target: "{block}", result: "{block}" }
    ];

    return operations;
}

// TASK 6: Efficient text object selection
function task6_efficient_selection() {
    // Real-world scenario: refactor function arguments
    function oldFunction(param1, param2, param3) {
        return param1 + param2 + param3;
    }

    // After ci(: change argument list to new parameters
    function newFunction(paramA, paramB, paramC) {
        return paramA + paramB + paramC;
    }

    // Scenario 2: Change string content with ci'
    const message = "This is the 'old message' that needs updating";

    // Scenario 3: Delete array contents with di[
    const data = [1, 2, 3, 4, 5];

    return {
        oldFunctionParams: oldFunction.length,
        newFunctionParams: typeof newFunction === "function" ? newFunction.length : 0,
        message,
        dataLength: data.length,
        dataSnapshot: [...data],
    };
}

// Run the tests
runTests();
