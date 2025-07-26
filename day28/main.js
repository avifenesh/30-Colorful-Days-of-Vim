/*
Welcome to Day 28 of your Vim challenge!

EXTERNAL COMMANDS - Integrate Unix tools seamlessly with Vim!
Today's focus: Using external commands to extend Vim's capabilities

New commands for today:
    - `:!{cmd}` - Execute command, see output
    - `:!!` - Repeat last external command
    - `:r !{cmd}` - Read command output into buffer
    - `:w !{cmd}` - Send buffer/range to command stdin
    - `:.!{cmd}` - Replace current line with command output
    - `:10,20!{cmd}` - Filter lines 10-20 through command
    - `!{motion}{cmd}` - Filter motion through command
    - `!!{cmd}` - Filter current line (shortcut)
    - `!ap{cmd}` - Filter paragraph
    - `!G{cmd}` - Filter to end of file
    - `:r !date` - Insert current date
    - `:r !ls` - Insert directory listing
    - `:w !sudo tee %` - Write with sudo
    - `:%!sort` - Sort entire file
    - `:%!uniq` - Remove duplicates
    - `:%!column -t` - Align columns
    - `:%!jq .` - Format JSON
    - `:%!xmllint --format -` - Format XML
    - `:!mkdir -p %:h` - Create parent directories
    - `:silent !{cmd}` - Run without showing output
    - `:r !curl {url}` - Fetch URL content

Useful filter commands:
    - `sort` - Sort lines
    - `sort -n` - Numeric sort
    - `sort -r` - Reverse sort
    - `uniq` - Remove duplicate lines
    - `grep pattern` - Keep matching lines
    - `grep -v pattern` - Remove matching lines
    - `sed 's/old/new/g'` - Replace text
    - `awk '{print $2}'` - Extract columns
    - `tr a-z A-Z` - Convert to uppercase
    - `wc -l` - Count lines
    - `fmt` - Format paragraphs
    - `expand` - Convert tabs to spaces
    - `unexpand` - Convert spaces to tabs

Advanced techniques:
    - `:argdo !{cmd} %` - Run on all args
    - `:bufdo !{cmd} %` - Run on all buffers
    - `:windo !{cmd} %` - Run on all windows
    - `:.!sh` - Execute current line as shell
    - `:r !echo %:p` - Insert full file path
    - `:r !echo %:h` - Insert directory path
    - `!}sort` - Sort next paragraph
    - `V}!sort` - Visual select and sort

REMINDERS - Keys from previous days:
    Day 27: Ranges - Essential for external commands!
    Day 26: Tags - `:!ctags -R .` to generate
    Day 25: Jump list - External commands create jumps
    Day 24: Sessions - External command history saved
    Day 23: Undo tree - Can undo external filters
    Day 22: Location list - `:lmake` runs external
    Day 21: Quickfix - `:make` runs external
    Day 20: Argument list - Process with external
    Day 19: Custom commands - Wrap external commands
    Day 18: Autocommands - Trigger external commands
    Day 17: Registers - Store command output
    Day 16: Folding - Filter through fold commands
    Day 15: Command history - Find external commands
    Day 14: Autocomplete - Complete filenames
    Day 13: Windows - `:!` works per window
    Day 12: Global commands - Combine with external
    Day 11: Marks - Preserve position during filter
    Day 10: Visual mode - Select for filtering
    Day 9: Text objects - Filter text objects
    Day 8: Macros - Include external commands
    Day 7: Replace - vs external sed
    Day 6: Visual mode - Filter visual selection
    Day 5: Search - Grep integration
    Day 4: Repeat - Can't repeat :!
    Day 3: Yank/paste - Yank command output
    Day 2: Delete - Delete with external
    Day 1: Movement - Navigate for filtering

Your tasks for Day 28:
1. Insert timestamps and system information
2. Sort and process data with Unix tools
3. Format code using external formatters
4. Filter text through custom commands
5. Integrate Vim with your development workflow

Scenario: You're processing data files and need to leverage
Unix tools for sorting, filtering, and transforming text.
*/

console.log("=== Vim Challenge Day 28 ===\n");

// Task 1: Insert date and system info
// Use :r !date to insert date here:
// [DATE WILL BE INSERTED HERE]

// Use :r !whoami to insert username:
// [USERNAME WILL BE INSERTED HERE]

// Use :r !pwd to insert current directory:
// [DIRECTORY WILL BE INSERTED HERE]

// Task 2: Data to be sorted and processed
// SORT ME - Fruit list (use V}!sort)
const fruits = [
    "Orange",
    "Apple",
    "Banana",
    "Grape",
    "Cherry",
    "Mango",
    "Kiwi",
    "Peach"
];

// SORT ME - Numbers (use V}!sort -n)
const numbers = [
    42,
    7,
    128,
    3,
    99,
    15,
    88,
    1
];

// Task 3: Code formatting examples
// Format this JSON with :%!jq . or !}jq .
const jsonData = {"name":"John","age":30,"city":"New York","hobbies":["reading","coding","hiking"],"address":{"street":"123 Main St","zip":"10001"}};

// Format this minified CSS with :%!css-beautify
const cssString = "body{margin:0;padding:0;font-family:Arial,sans-serif}h1{color:#333;font-size:2em}.container{width:80%;margin:0 auto}";

// Task 4: Text filtering
// Remove duplicate lines with !}uniq
const dataWithDuplicates = `
Apple
Banana
Apple
Cherry
Banana
Date
Cherry
Elderberry
`;

// Convert to uppercase with !}tr a-z A-Z
const lowercaseText = `
this text should be
converted to uppercase
using an external command
`;

// Extract second column with !}awk '{print $2}'
const tableData = `
John 25 Engineer
Jane 30 Designer
Bob 35 Manager
Alice 28 Developer
`;

// Task 5: Development workflow integration
class DataProcessor {
    constructor() {
        this.data = [];
    }
    
    // Count lines in this method with !}wc -l
    processData(input) {
        // Validate input
        if (!input || !Array.isArray(input)) {
            throw new Error("Invalid input");
        }
        
        // Process each item
        for (const item of input) {
            // Transform the item
            const processed = this.transform(item);
            
            // Store the result
            this.data.push(processed);
        }
        
        // Return processed count
        return this.data.length;
    }
    
    // Format this method with your code formatter
    transform(item) {
        // Complex transformation logic
        if(typeof item==="string"){return item.toUpperCase()}else if(typeof item==="number"){return item*2}else{return String(item)}
    }
    
    // Generate documentation with external tool
    getData() {
        return [...this.data];
    }
}

// Grep for TODO items with :!grep -n TODO %
// TODO: Implement error handling
// TODO: Add unit tests
// TODO: Optimize performance
// FIXME: Handle edge cases
// TODO: Add documentation

// Test verification
function verifyExternalCommands() {
    console.log("External Command Tests:");
    let passed = 0;
    const total = 5;
    
    // Test 1: Date/time inserted
    const dateInserted = false; // Would check for date output
    console.log(`${dateInserted ? '✓' : '✗'} Date and system info inserted`);
    if (dateInserted) passed++;
    
    // Test 2: Data sorted
    const dataSorted = false; // Would verify sort commands
    console.log(`${dataSorted ? '✓' : '✗'} Data sorted with external commands`);
    if (dataSorted) passed++;
    
    // Test 3: Code formatted
    const codeFormatted = false; // Would check formatting
    console.log(`${codeFormatted ? '✓' : '✗'} Code formatted with external tools`);
    if (codeFormatted) passed++;
    
    // Test 4: Text filtered
    const textFiltered = true; // Placeholder
    console.log(`${textFiltered ? '✓' : '✗'} Text filtered through commands`);
    if (textFiltered) passed++;
    
    // Test 5: Workflow integrated
    const workflowIntegrated = true; // Placeholder
    console.log(`${workflowIntegrated ? '✓' : '✗'} Development workflow integrated`);
    if (workflowIntegrated) passed++;
    
    if (passed === total) {
        console.log("\n✓ All tests passed!");
    } else {
        console.log(`\n✗ ${total - passed} tests failed. Keep practicing external commands!`);
    }
}

verifyExternalCommands();