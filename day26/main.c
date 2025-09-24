/*
Welcome to Day 26 of your Vim challenge!

RANGES & COMMAND-LINE MAGIC - Master precise text manipulation with ranges!
Today's focus: Advanced range syntax and powerful ex commands for precise editing

New commands for today:
    Range syntax:
    - `:10,20` - Lines 10 through 20
    - `:.` - Current line (default if no range given)
    - `:$` - Last line of file
    - `:%` - Entire file (1,$)
    - `:.,+5` - Current line plus next 5 lines
    - `:.-3,.` - Three lines before to current line
    - `:.,$` - Current line to end of file
    - `:1,.` - Beginning to current line

    Visual selection ranges:
    - `:'<,'>` - Visual selection range (auto-filled)
    - Use visual mode, then : to get this automatically

    Pattern-based ranges:
    - `:/pattern/` - Next line matching pattern
    - `:?pattern?` - Previous line matching pattern
    - `:/start/,/end/` - From start pattern to end pattern
    - `:/function/,/^}` - From function to closing brace

    Marks as ranges:
    - `:'a,'b` - From mark a to mark b
    - `:'a,.` - From mark a to current line

    Advanced range modifiers:
    - `:10;15` - Line 10, then 5 lines from there (different from :10,15)
    - `:10+2` - Line 12 (10 + 2)
    - `:$-5` - 5 lines before last line

Commands with ranges:
    - `:{range}d` - Delete range
    - `:{range}y` - Yank range
    - `:{range}s/old/new/g` - Substitute in range
    - `:{range}p` - Print range
    - `:{range}m{address}` - Move range to address
    - `:{range}t{address}` or `:{range}co{address}` - Copy range to address
    - `:{range}!{command}` - Filter range through external command
    - `:{range}w {file}` - Write range to file
    - `:{range}r {file}` - Read file at line (not range, just address)

Global commands with ranges:
    - `:{range}g/{pattern}/{command}` - Execute command on matching lines
    - `:{range}v/{pattern}/{command}` - Execute on non-matching lines

REMINDERS - Keys from previous days:
    Day 25: Tags - :tag works with ranges for jumping context
    Day 24: Argument list - :argdo can use ranges in each file
    Day 23: Undo tree - Different from range operations
    Day 22: Location list - :ldo operates on ranges of locations
    Day 21: Quickfix - :cdo operates on ranges of errors
    Day 20: Buffers - :bufdo can apply range operations
    Day 19: Custom commands - Create commands that use ranges
    Day 18: Autocommands - Trigger on range operations
    Day 17: Registers - Store range content in registers
    Day 16: Folding - Ranges work within folds
    Day 15: Command history - Reuse complex range commands
    Day 14: Autocomplete - Complete addresses and patterns
    Day 13: Windows - Range operations in specific windows
    Day 12: Global commands - Core of range-based editing
    Day 11: Marks - Essential for mark-based ranges
    Day 10: Visual mode - Creates :'<,'> ranges automatically
    Day 9: Text objects - Select text for range operations
    Day 8: Macros - Record range operations
    Day 7: Replace - :s command is the heart of ranges
    Day 6: Visual mode - Foundation of range selection
    Day 5: Search - Patterns used in range boundaries
    Day 4: Repeat - Repeat range operations with .
    Day 3: Yank/paste - Range yanking with :{range}y
    Day 2: Delete/change - Range deletion with :{range}d
    Day 1: Movement - Understanding line addressing

Your tasks for Day 26:
1. Master different range syntax patterns
2. Combine ranges with powerful ex commands
3. Use pattern-based and mark-based ranges
4. Apply global commands with ranges
5. Create complex text transformations

Scenario: You're cleaning up a large C codebase with inconsistent
formatting and need to perform precise transformations on specific
sections of code.
*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

// Function declarations for range practice
void demonstrate_basic_ranges(void);
void demonstrate_pattern_ranges(void);
void demonstrate_visual_ranges(void);
void demonstrate_advanced_operations(void);
void demonstrate_global_commands(void);
int test_range_understanding(void);

int main() {
    printf("=== Vim Challenge Day 26: Ranges & Command-line Magic ===\n\n");

    demonstrate_basic_ranges();
    demonstrate_pattern_ranges();
    demonstrate_visual_ranges();
    demonstrate_advanced_operations();
    demonstrate_global_commands();

    int test_score = test_range_understanding();

    printf("TEST RESULTS:\n");
    printf("=============\n");
    printf("Range Understanding Score: %d/5\n", test_score);

    if (test_score == 5) {
        printf("\n✓ Excellent! You've mastered Vim ranges!\n");
        printf("Ready to perform precise text operations with surgical precision.\n");
    } else {
        printf("\n⚠ Score: %d/5 - Keep practicing range operations!\n", test_score);
    }

    printf("\nNext steps:\n");
    printf("• Practice different range syntaxes\n");
    printf("• Combine ranges with substitute commands\n");
    printf("• Use global commands with ranges\n");
    printf("• Master pattern-based range boundaries\n");

    return 0;
}

void demonstrate_basic_ranges(void) {
    printf("BASIC RANGE SYNTAX:\n");
    printf("==================\n");
    printf("Understanding line addressing and basic ranges:\n\n");

    printf("Single line addresses:\n");
    printf("• :10 - Go to line 10\n");
    printf("• :. - Current line (implicit)\n");
    printf("• :$ - Last line of file\n\n");

    printf("Range syntax examples:\n");
    printf("• :1,10 - Lines 1 through 10\n");
    printf("• :.,$ - Current line to end of file\n");
    printf("• :.,$-5 - Current line to 5 lines before end\n");
    printf("• :10,+5 - Line 10 plus next 5 lines\n");
    printf("• :$-10,$ - 10 lines before end to end\n\n");

    printf("Common range operations:\n");
    printf("• :10,20d - Delete lines 10-20\n");
    printf("• :.,+5y - Yank current line plus next 5\n");
    printf("• :1,$s/old/new/g - Replace in entire file (same as %%s)\n");
    printf("• :10,15p - Print lines 10-15\n\n");
}

void demonstrate_pattern_ranges(void) {
    printf("PATTERN-BASED RANGES:\n");
    printf("====================\n");
    printf("Using search patterns as range boundaries:\n\n");

    printf("Pattern address syntax:\n");
    printf("• :/pattern/ - Next line matching pattern\n");
    printf("• :?pattern? - Previous line matching pattern\n");
    printf("• :/start/,/end/ - From start pattern to end pattern\n\n");

    printf("Practical examples:\n");
    printf("• :/function/,/^}/ - From function declaration to closing brace\n");
    printf("• :/TODO/,/^$/ - From TODO comment to next blank line\n");
    printf("• :?#include?,/main/ - From last #include to main function\n");
    printf("• :/struct/,+10 - From struct keyword plus 10 lines\n\n");

    printf("Code-specific patterns:\n");
    char sample_code[] =
        "/* Example C code structure:\n"
        " * :/typedef/,/^}/ - Entire struct definition\n"
        " * :/if/,/^}/ - If block with compound statement\n"
        " * :/#define/,/^$/ - Macro definitions section\n"
        " * :/printf/,/;/ - From printf to end of statement\n"
        " */";
    printf("%s\n\n", sample_code);
}

void demonstrate_visual_ranges(void) {
    printf("VISUAL SELECTION RANGES:\n");
    printf("=======================\n");
    printf("Working with visually selected ranges:\n\n");

    printf("Visual range syntax:\n");
    printf("• :'<,'> - Visual selection (auto-filled when you type :)\n");
    printf("• Select text, then : automatically gives you :'<,'>|\n\n");

    printf("Visual range operations:\n");
    printf("• Select text, then :'<,'>s/old/new/g - Replace in selection\n");
    printf("• Select block, then :'<,'>!sort - Sort selected lines\n");
    printf("• Select function, then :'<,'>w function.c - Write to file\n");
    printf("• Select code, then :'<,'>!indent - Auto-indent selection\n\n");

    printf("Visual block ranges (Ctrl-V):\n");
    printf("• Column-wise operations on rectangular selections\n");
    printf("• :'<,'>s/^/  / - Add 2 spaces to start of each line\n");
    printf("• :'<,'>s/$/;/ - Add semicolon to end of each line\n\n");
}

void demonstrate_advanced_operations(void) {
    printf("ADVANCED RANGE OPERATIONS:\n");
    printf("=========================\n");
    printf("Powerful range-based transformations:\n\n");

    printf("Copy and move operations:\n");
    printf("• :1,5t$ - Copy lines 1-5 to end of file\n");
    printf("• :10,15m$ - Move lines 10-15 to end of file\n");
    printf("• :.,+3t'a - Copy current and next 3 lines to mark a\n");
    printf("• :/function/,/^}/m'b - Move entire function to mark b\n\n");

    printf("External command filtering:\n");
    printf("• :1,10!sort - Sort first 10 lines\n");
    printf("• :.,$!uniq - Remove duplicates from current line to end\n");
    printf("• :/struct/,/^}/!indent -linux - Format struct with Linux style\n");
    printf("• :%%!clang-format - Format entire file with clang-format\n\n");

    printf("File operations:\n");
    printf("• :10,20w functions.c - Write lines 10-20 to new file\n");
    printf("• :.,+50w >>output.txt - Append range to existing file\n");
    printf("• :/main/,/^}/w main_function.c - Write main function to file\n\n");
}

void demonstrate_global_commands(void) {
    printf("GLOBAL COMMANDS WITH RANGES:\n");
    printf("============================\n");
    printf("Combining global operations with ranges:\n\n");

    printf("Basic global syntax with ranges:\n");
    printf("• :1,100g/pattern/command - Execute command on matching lines in range\n");
    printf("• :.,$/TODO/d - Delete all TODO lines from current to end\n");
    printf("• :10,50v/^#/d - Delete non-comment lines in range 10-50\n\n");

    printf("Complex global operations:\n");
    printf("• :g/function/.,/^}/s/old/new/g - Replace in all functions\n");
    printf("• :g/struct/.,+1s/$/;/ - Add semicolons after struct lines\n");
    printf("• :v/^\\s*$/d - Delete all non-empty lines (remove blanks)\n\n");

    printf("Multi-step global operations:\n");
    printf("• :g/DEBUG/s//RELEASE/g | update - Replace and save\n");
    printf("• :g/^#include/t$ - Copy all includes to end of file\n");
    printf("• :g/printf/s/printf/fprintf(stderr,/g - Change all printf to fprintf\n\n");

    printf("Code cleanup examples:\n");
    printf("• :g/^\\s*$/d - Remove empty lines\n");
    printf("• :g/\\/\\*.*\\*\\//d - Remove single-line comments\n");
    printf("• :g/FIXME\\|TODO/s//RESOLVED/ - Replace FIXME and TODO with RESOLVED\n\n");
}

int test_range_understanding(void) {
    printf("TESTING RANGE KNOWLEDGE:\n");
    printf("=======================\n");

    int score = 0;

    // Test 1: Basic range syntax
    printf("✓ Basic range syntax: :10,20 (lines 10 through 20)\n");
    score++;

    // Test 2: Current line ranges
    printf("✓ Current line ranges: .,+5 (current plus next 5)\n");
    score++;

    // Test 3: Pattern ranges
    printf("✓ Pattern ranges: /start/,/end/ (between patterns)\n");
    score++;

    // Test 4: Visual ranges
    printf("✓ Visual ranges: '<,'> (visual selection)\n");
    score++;

    // Test 5: Global commands with ranges
    printf("✓ Global with ranges: :g/pattern/command (on matching lines)\n");
    score++;

    return score;
}

/*
 * Sample function for range practice
 * Students can practice these range operations:
 *
 * 1. :/main/,/^}/s/printf/puts/g
 *    (Replace printf with puts in main function)
 *
 * 2. Delete comment blocks using pattern ranges
 *    (Use visual selection or pattern ranges)
 *
 * 3. :/int/,+2y
 *    (Yank function declaration and next 2 lines)
 *
 * 4. Add priority markers to TODO lines
 *    (Use global commands with ranges)
 */

// TODO: Add error handling
void sample_function_one(int param) {
    printf("This is function one with parameter: %d\n", param);
    // More code here
}

// TODO: Optimize this function
void sample_function_two(char* str) {
    printf("Processing string: %s\n", str);
    // Implementation needed
}

// FIXME: Handle edge cases
int sample_function_three(void) {
    return 42;
}

/*
 * End of sample functions
 * Practice ranges on the code above!
 */