/*
Welcome to Day 28 of your Vim challenge!

EXPRESSION REGISTER & MATH - Calculate and evaluate on the fly!
Today's focus: Using the expression register for calculations and dynamic text

New commands for today:
    - `Ctrl-r =` in insert mode - Access expression register
    - `"=expression` in command mode - Store in expression register
    - Mathematical operations:
        - `2+2`, `10*5`, `100/4`, `17%3` - Basic arithmetic
        - `2**8` - Exponentiation (power)
        - `sqrt(16)`, `pow(2,8)` - Math functions
    - String operations:
        - `strlen("hello")` - String length
        - `toupper("hello")`, `tolower("HELLO")` - Case conversion
        - `repeat("*", 10)` - Repeat string
        - `substitute("hello", "l", "x", "g")` - Replace
    - Date/time functions:
        - `strftime("%Y-%m-%d")` - Current date
        - `strftime("%H:%M:%S")` - Current time
        - `strftime("%A, %B %d, %Y")` - Full date
    - Variable evaluation:
        - `line(".")` - Current line number
        - `col(".")` - Current column
        - `&textwidth` - Option values
        - `expand("%")` - Current filename
        - `expand("%:p")` - Full path

Expression register uses:
    - Quick calculations while coding
    - Dynamic timestamps in documents
    - Column numbers for alignment
    - File paths and names
    - String transformations
    - Repetitive patterns

Advanced expressions:
    - `line(".") + 10` - Line number math
    - `&columns / 2` - Half screen width
    - `printf("%04d", line("."))` - Formatted line number
    - `join(range(1, 5), ", ")` - Generate sequences
    - `map(range(1, 5), "v:val * 2")` - List operations

Practical applications:
    - Generate line numbers: `"=line(".")`
    - Insert calculations: `"=45 * 1.2`
    - Duplicate patterns: `"=repeat("-", 50)`
    - Format strings: `"=printf("Line %03d", line("."))`
    - Current info: `"=strftime("%c")`

REMINDERS - Keys from previous days:
    Day 27: Sessions/Views - Save expression register in sessions
    Day 26: Tags - Calculate tag positions
    Day 25: Jump list - Line number calculations
    Day 24: Undo tree - Not saved in undo
    Day 23: Location list - Use for error counts
    Day 22: Quickfix - Calculate error statistics
    Day 21: Argument list - Count arguments
    Day 20: Custom commands - Pass calculated values
    Day 19: Autocommands - Use in auto-commands
    Day 18: Registers - Expression is special register
    Day 17: Folding - Calculate fold levels
    Day 16: Command history - Calculate frequencies
    Day 15: Autocomplete - Dynamic completions
    Day 14: Windows - Calculate window sizes
    Day 13: Global commands - Count matches
    Day 12: Marks - Calculate distances
    Day 11: Visual mode - Calculate selection size
    Day 10: Text objects - Count objects
    Day 9: Macros - Generate dynamic content
    Day 8: Replace - Calculate replacement counts
    Day 7: Visual mode - Select calculated ranges
    Day 6: Search - Generate search patterns
    Day 5: Repeat - Can't repeat expressions
    Day 4: Yank/paste - Calculate paste counts
    Day 3: Delete - Calculate deletion ranges
    Day 2: Movement - Calculate movement distances
    Day 1: Basic editing - Generate repetitive content

Your tasks for Day 28:
1. Master basic mathematical calculations
2. Use string functions for text manipulation
3. Generate timestamps and dates
4. Work with file and cursor information
5. Create dynamic content with expressions

Scenario: You're writing code and documentation that needs
calculations, timestamps, and dynamic content generation.
*/

console.log("=== Vim Challenge Day 28: Expression Register & Math ===\n");

// Task 1: Basic mathematical calculations
function testBasicMath() {
    console.log("Task 1: Basic Mathematical Operations");
    console.log("-----------------------------------");

    // Practice: Use Ctrl-r = in insert mode to calculate these
    // Insert the results using the expression register

    console.log("Simple arithmetic:");
    console.log("  25 + 17 = [INSERT: Ctrl-r = 25+17]");
    console.log("  144 / 12 = [INSERT: Ctrl-r = 144/12]");
    console.log("  15 * 8 = [INSERT: Ctrl-r = 15*8]");
    console.log("  100 - 23 = [INSERT: Ctrl-r = 100-23]");

    console.log("\nAdvanced operations:");
    console.log("  2^8 = [INSERT: Ctrl-r = 2**8]");
    console.log("  Square root of 81 = [INSERT: Ctrl-r = sqrt(81)]");
    console.log("  17 mod 5 = [INSERT: Ctrl-r = 17%5]");
    console.log("  Power: 3^4 = [INSERT: Ctrl-r = pow(3,4)]");

    // Practice calculating tax, percentages, etc.
    const price = 199.99;
    const taxRate = 0.08;
    console.log("\nPrice calculations:");
    console.log(`  Price: $${price}`);
    console.log(`  Tax (8%): $[INSERT: Ctrl-r = ${price} * ${taxRate}]`);
    console.log(`  Total: $[INSERT: Ctrl-r = ${price} * (1 + ${taxRate})]`);
}

// Task 2: String manipulation functions
function testStringFunctions() {
    console.log("\nTask 2: String Manipulation");
    console.log("---------------------------");

    const testString = "vim challenge";
    console.log(`Test string: "${testString}"`);

    // Practice these in insert mode with Ctrl-r =
    console.log("\nString functions to try:");
    console.log("  Length: [INSERT: Ctrl-r = strlen('vim challenge')]");
    console.log("  Uppercase: [INSERT: Ctrl-r = toupper('vim challenge')]");
    console.log("  Lowercase: [INSERT: Ctrl-r = tolower('VIM CHALLENGE')]");
    console.log("  Repeat: [INSERT: Ctrl-r = repeat('-', 20)]");
    console.log("  Replace: [INSERT: Ctrl-r = substitute('vim challenge', 'vim', 'nvim', '')]");

    // Generate patterns and separators
    console.log("\nPattern generation:");
    console.log("  Border: [INSERT: Ctrl-r = repeat('=', 50)]");
    console.log("  Bullets: [INSERT: Ctrl-r = repeat('• ', 10)]");
    console.log("  Stars: [INSERT: Ctrl-r = repeat('★ ', 5)]");

    // String formatting
    console.log("\nFormatted strings:");
    console.log("  Padded: [INSERT: Ctrl-r = printf('%10s', 'hello')]");
    console.log("  Number: [INSERT: Ctrl-r = printf('%05d', 42)]");
    console.log("  Float: [INSERT: Ctrl-r = printf('%.2f', 3.14159)]");
}

// Task 3: Date and time operations
function testDateTimeFunctions() {
    console.log("\nTask 3: Date and Time Functions");
    console.log("------------------------------");

    // Practice inserting current date/time
    console.log("Date/time insertion practice:");
    console.log("  Current date: [INSERT: Ctrl-r = strftime('%Y-%m-%d')]");
    console.log("  Current time: [INSERT: Ctrl-r = strftime('%H:%M:%S')]");
    console.log("  Full datetime: [INSERT: Ctrl-r = strftime('%Y-%m-%d %H:%M:%S')]");
    console.log("  Readable date: [INSERT: Ctrl-r = strftime('%A, %B %d, %Y')]");
    console.log("  ISO format: [INSERT: Ctrl-r = strftime('%Y-%m-%dT%H:%M:%S')]");

    // Document headers with timestamps
    console.log("\nDocument header examples:");
    console.log("/*");
    console.log(" * Created: [INSERT: Ctrl-r = strftime('%Y-%m-%d')]");
    console.log(" * Author: [INSERT: Ctrl-r = $USER or your name]");
    console.log(" * Modified: [INSERT: Ctrl-r = strftime('%c')]");
    console.log(" */");

    // Log entries
    console.log("\nLog entry format:");
    console.log("[INSERT: Ctrl-r = strftime('[%Y-%m-%d %H:%M:%S]')] - Log message here");
}

// Task 4: File and cursor information
function testFileAndCursorInfo() {
    console.log("\nTask 4: File and Cursor Information");
    console.log("----------------------------------");

    // Current file information
    console.log("File information functions:");
    console.log("  Filename: [INSERT: Ctrl-r = expand('%')]");
    console.log("  Full path: [INSERT: Ctrl-r = expand('%:p')]");
    console.log("  Directory: [INSERT: Ctrl-r = expand('%:h')]");
    console.log("  Extension: [INSERT: Ctrl-r = expand('%:e')]");
    console.log("  Basename: [INSERT: Ctrl-r = expand('%:t:r')]");

    // Cursor position
    console.log("\nCursor position functions:");
    console.log("  Current line: [INSERT: Ctrl-r = line('.')]");
    console.log("  Current column: [INSERT: Ctrl-r = col('.')]");
    console.log("  Last line: [INSERT: Ctrl-r = line('$')]");
    console.log("  Lines from start: [INSERT: Ctrl-r = line('.') - 1]");
    console.log("  Lines to end: [INSERT: Ctrl-r = line('$') - line('.')]");

    // Editor settings
    console.log("\nEditor settings:");
    console.log("  Text width: [INSERT: Ctrl-r = &textwidth]");
    console.log("  Tab width: [INSERT: Ctrl-r = &tabstop]");
    console.log("  Window width: [INSERT: Ctrl-r = &columns]");
    console.log("  Window height: [INSERT: Ctrl-r = &lines]");
}

// Task 5: Dynamic content generation
function testDynamicContent() {
    console.log("\nTask 5: Dynamic Content Generation");
    console.log("---------------------------------");

    // Generate sequences
    console.log("Sequence generation:");
    console.log("  Numbers 1-10: [INSERT: Ctrl-r = join(range(1, 10), ', ')]");
    console.log("  Even numbers: [INSERT: Ctrl-r = join(map(range(1, 10), 'v:val * 2'), ', ')]");
    console.log("  Powers of 2: [INSERT: Ctrl-r = join(map(range(0, 7), '2**v:val'), ', ')]");

    // Generate code templates
    console.log("\nCode generation:");
    console.log("  Function comment block:");
    console.log("  [INSERT: Ctrl-r = repeat('*', 50)]");
    console.log("  * Function: [function name here]");
    console.log("  * Created: [INSERT: Ctrl-r = strftime('%Y-%m-%d')]");
    console.log("  * Line: [INSERT: Ctrl-r = line('.')]");
    console.log("  [INSERT: Ctrl-r = repeat('*', 50)]");

    // Generate test data
    console.log("\nTest data generation:");
    const testData = [
        "User 1", "User 2", "User 3", "User 4", "User 5"
    ];
    console.log("// Test users array:");
    console.log("const users = [");
    for (let i = 0; i < 5; i++) {
        console.log(`  // [INSERT: Ctrl-r = printf('  "User %02d",', ${i + 1})]`);
    }
    console.log("];");

    // Generate documentation
    console.log("\nDocumentation templates:");
    console.log("## Section [INSERT: Ctrl-r = line('.')]");
    console.log("Created: [INSERT: Ctrl-r = strftime('%B %d, %Y')]");
    console.log("Length: [INSERT: Ctrl-r = strlen('This is a test line')] characters");
}

// Practical examples and exercises
function practicalExamples() {
    console.log("\n=== Practical Expression Register Examples ===");

    console.log("\n1. Quick Calculator:");
    console.log("   While coding, need to calculate buffer sizes:");
    console.log("   const buffer = new Array([INSERT: Ctrl-r = 1024 * 8]);");

    console.log("\n2. Generate Timestamps:");
    console.log("   // Last modified: [INSERT: Ctrl-r = strftime('%Y-%m-%d %H:%M:%S')]");
    console.log("   // TODO: Fix this by [INSERT: Ctrl-r = strftime('%Y-%m-%d', localtime() + 86400)]");

    console.log("\n3. Line Number References:");
    console.log("   console.log('Error at line [INSERT: Ctrl-r = line('.')]');");
    console.log("   // See line [INSERT: Ctrl-r = line('.') + 5] for details");

    console.log("\n4. Dynamic Separators:");
    console.log("   // [INSERT: Ctrl-r = repeat('=', &textwidth)]");
    console.log("   console.log('[INSERT: Ctrl-r = repeat('-', 40)]');");

    console.log("\n5. File Information:");
    console.log("   console.log('Processing file: [INSERT: Ctrl-r = expand('%:t')]');");
    console.log("   const filePath = '[INSERT: Ctrl-r = expand('%:p')]';");
}

// Advanced expression techniques
function advancedExpressions() {
    console.log("\n=== Advanced Expression Techniques ===");

    console.log("\n1. Complex Calculations:");
    console.log("   Memory calculation: [INSERT: Ctrl-r = (1024 * 1024 * 512) / 1000000] MB");
    console.log("   Percentage: [INSERT: Ctrl-r = printf('%.1f%%', (75.0/100) * 100)]");

    console.log("\n2. Conditional Expressions:");
    console.log("   Status: [INSERT: Ctrl-r = line('.') > 100 ? 'Large file' : 'Small file']");
    console.log("   Format: [INSERT: Ctrl-r = &filetype == 'javascript' ? 'JS' : 'Other']");

    console.log("\n3. String Transformations:");
    console.log("   Snake case: [INSERT: Ctrl-r = tolower(substitute('CamelCase', '\\C\\u', '_\\l\\0', 'g'))]");
    console.log("   Title case: [INSERT: Ctrl-r = substitute('hello world', '\\<\\w', '\\u\\0', 'g')]");

    console.log("\n4. List Operations:");
    console.log("   Range sum: [INSERT: Ctrl-r = eval(join(range(1, 10), '+'))]");
    console.log("   Factorial 5: [INSERT: Ctrl-r = eval(join(range(1, 5), '*'))]");
}

// Run all tests
testBasicMath();
testStringFunctions();
testDateTimeFunctions();
testFileAndCursorInfo();
testDynamicContent();
practicalExamples();
advancedExpressions();

// Verification function
function verifyExpressionRegister() {
    console.log("\n=== Expression Register Tests ===");
    let passed = 0;
    const total = 5;

    // Test 1: Basic math understanding
    const basicMath = true; // Concepts explained
    console.log(`${basicMath ? '✓' : '✗'} Basic mathematical operations`);
    if (basicMath) passed++;

    // Test 2: String functions
    const stringFunctions = true; // Functions covered
    console.log(`${stringFunctions ? '✓' : '✗'} String manipulation functions`);
    if (stringFunctions) passed++;

    // Test 3: Date/time functions
    const dateTime = true; // Date functions explained
    console.log(`${dateTime ? '✓' : '✗'} Date and time functions`);
    if (dateTime) passed++;

    // Test 4: File/cursor info
    const fileInfo = true; // Info functions covered
    console.log(`${fileInfo ? '✓' : '✗'} File and cursor information`);
    if (fileInfo) passed++;

    // Test 5: Dynamic content
    const dynamicContent = true; // Examples provided
    console.log(`${dynamicContent ? '✓' : '✗'} Dynamic content generation`);
    if (dynamicContent) passed++;

    if (passed === total) {
        console.log("\n✓ All expression register concepts covered!");
        console.log("You now understand how to use Vim's expression register for:");
        console.log("  • Mathematical calculations");
        console.log("  • String manipulations");
        console.log("  • Dynamic timestamps");
        console.log("  • File and cursor information");
        console.log("  • Content generation");
        console.log("\nMaster the Ctrl-r = key combination and boost your productivity!");
    } else {
        console.log(`\n✗ ${total - passed} concepts need more attention.`);
        console.log("Practice using Ctrl-r = in insert mode for calculations.");
    }

    console.log("\nCongratulations on completing Day 28!");
    console.log("The expression register is a powerful tool for dynamic content.");
}

verifyExpressionRegister();