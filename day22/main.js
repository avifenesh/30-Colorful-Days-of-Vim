/*
Welcome to Day 22 of your Vim challenge!

LOCATION LIST - Window-specific error navigation!
Today's focus: Using location lists for window-local error tracking

New commands for today:
    - `:lmake` - Run make and populate location list
    - `:lgrep {pattern}` - Grep and populate location list
    - `:lvimgrep {pattern} {files}` - Vimgrep to location list
    - `:lopen` - Open location list window
    - `:lclose` - Close location list window
    - `:lwindow` - Open location list if items exist
    - `:lnext` (`:ln`) - Go to next location
    - `:lprevious` (`:lp`) - Go to previous location
    - `:lfirst` (`:lfir`) - Go to first location
    - `:llast` (`:lla`) - Go to last location
    - `:ll {n}` - Go to nth location
    - `:llist` (`:lli`) - List all locations
    - `:lolder` - Go to older location list
    - `:lnewer` - Go to newer location list
    - `:ldo {cmd}` - Execute command on each location
    - `:lfdo {cmd}` - Execute command on each file
    - `:lgetexpr {expr}` - Set location list from expression
    - `:laddexpr {expr}` - Add to location list
    - `]l` and `[l` - Jump to next/prev location item

Key differences from quickfix:
    - Location list is window-local (each window has its own)
    - Quickfix is global (shared across all windows)
    - Use location list for window-specific tasks
    - Use quickfix for project-wide tasks

REMINDERS - Keys from previous days:
    Day 21: Quickfix - `:copen`, `:cn`, `:cp`
    Day 20: Argument list - `:args`, `:argdo`
    Day 19: Custom commands - `:command`
    Day 18: Autocommands - `:autocmd`
    Day 17: Registers - `"ay`, `"ap`
    Day 16: Folding - `zfap`, `za`
    Day 15: Command history - `q:`
    Day 14: Autocomplete - `Ctrl-n`
    Day 13: Windows - `:split`, `:vsplit`
    Day 12: Global commands - `:g/pattern/command`
    Day 11: Marks - `ma`, `'a`
    Day 10: Visual mode practice
    Day 9: Text objects - `iw`, `aw`
    Day 8: Macros - `qa`, `@a`
    Day 7: Replace - `:%s/old/new/g`
    Day 6: Visual mode - `v`, `V`, `Ctrl-v`
    Day 5: Search - `/pattern`, `n`, `N`
    Day 4: Repeat - `.`, `3w`, `2dd`
    Day 3: Yank/paste - `yy`, `p`, `P`
    Day 2: Delete/change - `dw`, `cw`
    Day 1: Movement - `w`, `b`, `e`, `0`, `$`

Your tasks for Day 22:
1. Use location lists in different windows for different search results
2. Search for TODOs in one window, errors in another
3. Apply fixes using :ldo to specific window results
4. Compare quickfix and location list side-by-side
5. Use location list expressions for custom filtering

Practice scenario:
    :split                      # Create two windows
    :lgrep TODO %              # Find TODOs in current window
    :lopen                     # Open location list
    <Ctrl-w>w                  # Switch window
    :lgrep FIXME %             # Different search in this window
    :lopen                     # Different location list!
*/

console.log("=== Vim Challenge Day 22 ===\n");

// Task 1: Different issues for different windows

// Window 1: Search for TODO items
// TODO: Implement user authentication
function authenticateUser(username, password) {
    // TODO: Add password hashing
    // TODO: Check against database
    return false;
}

// Window 2: Search for FIXME items
// FIXME: This function has performance issues
function processLargeDataset(data) {
    // FIXME: Optimize this O(n²) algorithm
    for (let i = 0; i < data.length; i++) {
        for (let j = 0; j < data.length; j++) {
            // FIXME: Remove unnecessary nested loop
        }
    }
}

// Task 2: Multiple error types to track separately
class DataValidator {
    constructor() {
        // ERROR: Missing required initialization
        this.rules = null;
    }
    
    validate(input) {
        // WARNING: Type check missing
        if (!input) {
            // ERROR: Should throw specific error type
            throw "Invalid input";
        }
        
        // TODO: Add validation logic
        // WARNING: Always returns true
        return true;
    }
}

// Task 3: Apply different fixes with :ldo
const config = {
    // DEPRECATED: Use 'apiEndpoint' instead
    api_endpoint: "http://localhost:3000",
    
    // DEPRECATED: Use 'maxRetries' instead
    max_retries: 3,
    
    // DEPRECATED: Use 'timeoutMs' instead
    timeout_ms: 5000
};

// Task 4: Compare with quickfix - project-wide issues
function globalErrorExample() {
    // GLOBAL-ERROR: This affects the entire project
    const sharedResource = null;
    
    // GLOBAL-WARNING: Security issue across all files
    eval("user.input");
}

// Task 5: Custom location list expressions
const testResults = [
    { file: "test1.js", line: 10, message: "Test failed: expected 5, got 4" },
    { file: "test2.js", line: 25, message: "Test failed: timeout exceeded" },
    { file: "test3.js", line: 5, message: "Test failed: null reference" }
];

// Function to generate location list format
function generateLocationList(results) {
    // Format: filename:line:column:message
    return results.map(r => `${r.file}:${r.line}:1:${r.message}`);
}

// Test verification
function runTests() {
    let passed = 0;
    const total = 5;
    
    // Test 1: Multiple location lists created
    const multipleListsCreated = false; // Would check window-local lists
    console.log(`${multipleListsCreated ? '✓' : '✗'} Multiple location lists created`);
    if (multipleListsCreated) passed++;
    
    // Test 2: Different searches performed
    const differentSearches = false; // Would check TODO vs FIXME searches
    console.log(`${differentSearches ? '✓' : '✗'} Different searches in different windows`);
    if (differentSearches) passed++;
    
    // Test 3: Fixes applied with :ldo
    const ldoFixesApplied = false; // Would check if deprecations fixed
    console.log(`${ldoFixesApplied ? '✓' : '✗'} Fixes applied using :ldo`);
    if (ldoFixesApplied) passed++;
    
    // Test 4: Comparison done
    const comparisonDone = true; // Placeholder
    console.log(`${comparisonDone ? '✓' : '✗'} Quickfix/location list compared`);
    if (comparisonDone) passed++;
    
    // Test 5: Custom expressions used
    const customExpressions = true; // Placeholder
    console.log(`${customExpressions ? '✓' : '✗'} Custom location list expressions`);
    if (customExpressions) passed++;
    
    if (passed === total) {
        console.log("\n✓ All tests passed!");
    } else {
        console.log(`\n✗ ${total - passed} tests failed. Keep practicing location lists!`);
    }
}

runTests();