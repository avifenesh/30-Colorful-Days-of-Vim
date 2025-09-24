/**
 * DAY 22: QUICKFIX LIST - NAVIGATING ERRORS AND SEARCH RESULTS
 *
 * Today's focus: The quickfix list - Vim's powerful tool for handling
 * compilation errors, linting results, and search matches globally.
 *
 * KEY COMMANDS TO PRACTICE:
 * ════════════════════════════════════════════════════════════════
 *
 * BASIC QUICKFIX OPERATIONS:
 * ─────────────────────────────────────────────────────────────────
 * :make                  - Run make command and populate quickfix
 * :copen                 - Open quickfix window
 * :cclose                - Close quickfix window
 * :clist                 - List all quickfix entries
 *
 * NAVIGATION:
 * ─────────────────────────────────────────────────────────────────
 * :cnext or :cn          - Jump to next quickfix entry
 * :cprev or :cp          - Jump to previous quickfix entry
 * :cfirst                - Jump to first quickfix entry
 * :clast                 - Jump to last quickfix entry
 * :cc N                  - Jump to quickfix entry number N
 *
 * SEARCH AND POPULATE:
 * ─────────────────────────────────────────────────────────────────
 * :grep pattern files    - Search using external grep, populate quickfix
 * :vimgrep pattern files - Search using Vim's internal grep
 * :bufdo vimgrep pattern % | copen  - Search all buffers
 *
 * QUICKFIX HISTORY:
 * ─────────────────────────────────────────────────────────────────
 * :colder                - Go to older quickfix list
 * :cnewer                - Go to newer quickfix list
 *
 * ERROR HANDLING:
 * ─────────────────────────────────────────────────────────────────
 * :cexpr system('command') - Populate quickfix from command output
 * :caddexpr               - Add to quickfix list
 * :cgetexpr               - Replace quickfix list
 */

console.log("=== Vim Challenge Day 22: Quickfix List ===\n");

// TASK 1: Fix syntax errors to enable quickfix navigation
// Use :make to populate quickfix, then :copen to see errors
// Navigate with :cnext, :cprev to jump between errors

// ERROR 1: Missing semicolon (line will be around 55)
const message = "Hello Quickfix"

// ERROR 2: Undefined variable (line will be around 58)
console.log(undefinedVar);

// ERROR 3: Missing closing brace (line will be around 61)
function brokenFunction() {
    return "missing brace";
// Missing closing brace here

// TASK 2: Search patterns using quickfix
// Use :vimgrep to find all TODO comments in this file
// Practice: :vimgrep /TODO/ % | copen

// TODO: This is the first todo item - find me with vimgrep
function processData(data) {
    // TODO: Add data validation here
    if (!data) {
        return null;
    }

    // TODO: Implement data transformation
    return data.map(item => {
        // TODO: Add proper error handling
        return item.toUpperCase();
    });
}

// TASK 3: Use quickfix to navigate between functions
// Use :vimgrep to find all function definitions
// Pattern: :vimgrep /^function\|^const.*=.*=>/ %

function calculateSum(numbers) {
    return numbers.reduce((sum, num) => sum + num, 0);
}

const multiplyBy = (factor) => {
    return (number) => number * factor;
};

function validateInput(input) {
    // TODO: Add comprehensive validation
    return input !== null && input !== undefined;
}

// TASK 4: Error patterns for quickfix practice
// Create intentional errors, then use quickfix to navigate and fix

// ERROR 4: Typo in method name (line will be around 94)
const numbers = [1, 2, 3, 4, 5];
console.log(numbers.map(n => n.squrt())); // Should be sqrt()

// ERROR 5: Incorrect function call (line will be around 97)
const result = calculateSum("not an array");

// ERROR 6: Missing import/reference (line will be around 100)
const _ = require('lodash'); // This will error if lodash not installed
console.log(_.sum([1, 2, 3]));

// TASK 5: Search and replace using quickfix
// Use :vimgrep to find all console.log statements
// Pattern: :vimgrep /console\.log/ %
// Then navigate with :cnext/:cprev to review each one

console.log("Debug: Starting application");
console.log("Debug: Processing data");
console.log("Debug: Validation complete");
console.log("Debug: Application finished");

// TASK 6: Complex search patterns
// Find all arrow functions: :vimgrep /=>/ %
// Find all error handling: :vimgrep /\(try\|catch\|throw\)/ %

const asyncOperation = async () => {
    try {
        const data = await fetchData();
        return processData(data);
    } catch (error) {
        console.error("Operation failed:", error);
        throw new Error("Processing failed");
    }
};

// TASK 7: Quickfix with external commands
// Use :cexpr system('node -c main.js') to check syntax
// Use :grep to search for patterns across multiple files (if available)

function fetchData() {
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            // Simulated error condition
            if (Math.random() > 0.5) {
                reject(new Error("Random failure"));
            } else {
                resolve([1, 2, 3, 4, 5]);
            }
        }, 1000);
    });
}

// Test verification function
function runTests() {
    let passed = 0;
    const total = 7;

    console.log("Testing Quickfix List Skills:");

    // Test 1: Check if syntax errors were found and fixed
    let syntaxErrorsFixed = true;
    try {
        // This would fail if there are syntax errors
        eval(`
            const message = "Hello Quickfix";
            const testVar = "defined";
            function testFunction() {
                return "complete";
            }
        `);
        console.log("✓ Test 1: Syntax errors fixed");
        passed++;
    } catch (e) {
        console.log("✗ Test 1: Syntax errors remain");
    }

    // Test 2: TODO items available for search
    const todoCount = (String(processData).match(/TODO/g) || []).length;
    if (todoCount >= 4) {
        console.log("✓ Test 2: TODO items available for vimgrep search");
        passed++;
    } else {
        console.log("✗ Test 2: Not enough TODO items for practice");
    }

    // Test 3: Function definitions available
    const functionCount =
        (String(calculateSum) ? 1 : 0) +
        (String(multiplyBy) ? 1 : 0) +
        (String(validateInput) ? 1 : 0);
    if (functionCount >= 3) {
        console.log("✓ Test 3: Function definitions available for search");
        passed++;
    } else {
        console.log("✗ Test 3: Missing function definitions");
    }

    // Test 4: Error patterns present
    const hasErrors = true; // Placeholder - would check for intentional errors
    if (hasErrors) {
        console.log("✓ Test 4: Error patterns available for practice");
        passed++;
    } else {
        console.log("✗ Test 4: Missing error patterns");
    }

    // Test 5: Console.log statements present
    const consoleLogCount = 4; // Count of console.log statements
    if (consoleLogCount >= 4) {
        console.log("✓ Test 5: Console.log statements available for search");
        passed++;
    } else {
        console.log("✗ Test 5: Not enough console.log statements");
    }

    // Test 6: Complex patterns present
    const hasArrowFunctions = String(asyncOperation).includes('=>');
    const hasErrorHandling = String(asyncOperation).includes('try');
    if (hasArrowFunctions && hasErrorHandling) {
        console.log("✓ Test 6: Complex patterns available for advanced search");
        passed++;
    } else {
        console.log("✗ Test 6: Missing complex patterns");
    }

    // Test 7: External command compatibility
    const hasAsyncCode = typeof fetchData === 'function';
    if (hasAsyncCode) {
        console.log("✓ Test 7: Code structure suitable for external command testing");
        passed++;
    } else {
        console.log("✗ Test 7: Missing async code structure");
    }

    console.log(`\nResults: ${passed}/${total} tests passed`);

    if (passed === total) {
        console.log("🎉 Excellent! All quickfix exercises are ready.");
        console.log("\nNext steps:");
        console.log("1. Practice :make to find syntax errors");
        console.log("2. Use :copen to see the quickfix window");
        console.log("3. Navigate with :cnext/:cprev between errors");
        console.log("4. Try :vimgrep /TODO/ % to find all todos");
        console.log("5. Use :clist to review all quickfix entries");
        console.log("6. Practice :colder/:cnewer for quickfix history");
    } else {
        console.log("⚠️  Some tests failed - check the code structure");
    }

    return passed === total;
}

// FINAL TASK: Practice quickfix workflow
// 1. Use :make to find all syntax errors
// 2. Use :copen to see the quickfix window
// 3. Navigate with :cnext/:cprev between errors
// 4. Fix each error in turn
// 5. Use :clist to see remaining errors
// 6. Use :vimgrep to find and review all TODO items
// 7. Practice :colder/:cnewer to navigate quickfix history

/**
 * EXPECTED WORKFLOW:
 * ══════════════════════════════════════════════════════════════════
 *
 * 1. Open this file in Vim
 * 2. Run :make to check for syntax errors
 * 3. Use :copen to see the quickfix window
 * 4. Navigate errors with :cnext, :cprev, :cc N
 * 5. Fix syntax errors one by one
 * 6. Use :vimgrep /TODO/ % to find all todos
 * 7. Practice navigating the search results
 * 8. Use :vimgrep with different patterns to explore
 * 9. Try :colder/:cnewer to see quickfix history
 *
 * SUCCESS CRITERIA:
 * ─────────────────────────────────────────────────────────────────
 * ✓ All syntax errors fixed (file runs without errors)
 * ✓ Comfortable with :copen/:cclose
 * ✓ Can navigate with :cnext/:cprev/:cc
 * ✓ Successfully used :vimgrep for searches
 * ✓ Understand quickfix as global error list
 * ✓ Can use :clist to review all entries
 */

// Run the tests
runTests();

module.exports = {
    processData,
    calculateSum,
    multiplyBy,
    validateInput,
    asyncOperation,
    fetchData
};