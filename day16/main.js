/*
Welcome to Day 16 of your Vim challenge!

FOLDING - Organize your code by hiding complexity!
Today's focus: Using Vim's folding features to manage large files

New commands for today:
    - `zf{motion}` - Create a fold (e.g., `zfap` for paragraph, `zf5j` for 5 lines)
    - `za` - Toggle fold (open/close)
    - `zo` - Open fold
    - `zc` - Close fold
    - `zO` - Open fold recursively
    - `zC` - Close fold recursively
    - `zd` - Delete fold
    - `zE` - Delete all folds
    - `zR` - Open all folds
    - `zM` - Close all folds
    - `zr` - Reduce folding level by one
    - `zm` - More folding level by one
    - `zj` - Move to next fold
    - `zk` - Move to previous fold
    - `:set foldmethod=manual/indent/syntax/marker`

REMINDERS - Keys from previous days:
    Day 15: Command history - `q:`, `q/`, `Ctrl-f`
    Day 14: Autocomplete - `Ctrl-n`, `Ctrl-p`
    Day 13: Windows - `:split`, `:vsplit`, `Ctrl-w w`
    Day 12: Global commands - `:g/pattern/d`
    Day 11: Marks - `ma`, `'a`
    Day 10: Visual mode practice
    Day 9: Text objects - `ap`, `ip`, `i{`, `a{`
    Day 8: Macros - `qa`, `@a`
    Day 7: Replace - `:%s/old/new/g`
    Day 6: Visual mode - `v`, `V`, `Ctrl-v`
    Day 5: Search - `/pattern`, `n`, `N`
    Day 4: Repeat - `.`, `3w`, `2dd`
    Day 3: Yank/paste - `yy`, `p`, `P`
    Day 2: Delete/change - `dw`, `cw`
    Day 1: Movement - `w`, `b`, `e`, `0`, `$`

Your tasks for Day 16:
1. Create folds for each major function (use `zf` with visual mode or motion)
2. Add fold markers to the configuration object sections
3. Create a fold for the entire test suite section
4. Practice navigating between folds using `zj` and `zk`
5. Use `zM` to close all folds, then selectively open the ones you need
*/

console.log("=== Vim Challenge Day 16 ===\n");

// Task 1: Create a fold for this entire utility section
// Utility Functions
function validateInput(input) {
    if (!input || typeof input !== 'string') {
        throw new Error('Invalid input: must be a non-empty string');
    }
    return input.trim();
}

function processData(data) {
    const validated = validateInput(data);
    return validated.split(',').map(item => item.trim());
}

function formatOutput(items) {
    return items.map((item, index) => `${index + 1}. ${item}`).join('\n');
}

// Task 2: Add fold markers to organize this configuration
const config = {
    // Database settings {{{
    database: {
        host: 'localhost',
        port: 5432,
        name: 'myapp',
        user: 'admin',
        password: 'secret'
    },
    // }}}
    
    // Server settings - needs fold markers
    server: {
        port: 3000,
        host: '0.0.0.0',
        ssl: false,
        compression: true
    },
    
    // Logging settings - needs fold markers  
    logging: {
        level: 'info',
        format: 'json',
        destination: 'stdout'
    }
};

// Task 1: Create a fold for this main application class
class Application {
    constructor(config) {
        this.config = config;
        this.data = [];
    }
    
    initialize() {
        console.log('Initializing application...');
        this.connectDatabase();
        this.startServer();
    }
    
    connectDatabase() {
        const { host, port, name } = this.config.database;
        console.log(`Connecting to ${name} at ${host}:${port}`);
    }
    
    startServer() {
        const { port, host } = this.config.server;
        console.log(`Starting server on ${host}:${port}`);
    }
    
    processRequest(request) {
        try {
            const data = processData(request);
            const formatted = formatOutput(data);
            return { success: true, result: formatted };
        } catch (error) {
            return { success: false, error: error.message };
        }
    }
}

// Task 3: Create a fold for this entire test suite
// Test Suite
function runTests() {
    let testsPassed = 0;
    const totalTests = 5;
    
    // Test 1: Check if folds are created
    const foldsCreated = false; // Would check if folds exist
    console.log(`${foldsCreated ? '✓' : '✗'} Folds created for functions`);
    if (foldsCreated) testsPassed++;
    
    // Test 2: Check fold markers
    const foldMarkersAdded = config.database && true; // Check if markers exist
    console.log(`${foldMarkersAdded ? '✓' : '✗'} Fold markers added to config`);
    if (foldMarkersAdded) testsPassed++;
    
    // Test 3: Check test suite fold
    const testSuiteFolded = false; // Would check if this section is foldable
    console.log(`${testSuiteFolded ? '✓' : '✗'} Test suite fold created`);
    if (testSuiteFolded) testsPassed++;
    
    // Test 4: Navigation practice
    const navigationPracticed = true; // Placeholder
    console.log(`${navigationPracticed ? '✓' : '✗'} Fold navigation practiced`);
    if (navigationPracticed) testsPassed++;
    
    // Test 5: Fold manipulation
    const foldManipulation = true; // Placeholder
    console.log(`${foldManipulation ? '✓' : '✗'} Fold open/close practiced`);
    if (foldManipulation) testsPassed++;
    
    if (testsPassed === totalTests) {
        console.log("\n✓ All tests passed!");
    } else {
        console.log(`\n✗ ${totalTests - testsPassed} tests failed. Keep practicing folding!`);
    }
}

// Run the tests
runTests();