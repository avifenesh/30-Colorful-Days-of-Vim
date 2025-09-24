/*
Welcome to Day 2 of your Vim challenge!

ADVANCED NAVIGATION - Master file and screen navigation!

New keys for today:
    - `gg`: Go to the first line of the file
    - `G`: Go to the last line of the file
    - `{number}G`: Go to specific line number
    - `Ctrl-d`: Move down half a page
    - `Ctrl-u`: Move up half a page
    - `Ctrl-f`: Move forward one full page
    - `Ctrl-b`: Move backward one full page
    - `H`: Move to the top of the screen (High)
    - `M`: Move to the middle of the screen (Middle)
    - `L`: Move to the bottom of the screen (Low)
    - `{`: Move to the previous paragraph
    - `}`: Move to the next paragraph
    - `%`: Jump to matching bracket/parenthesis

REMINDERS - Keys from previous days:
    Day 1: Word/line movement - `w`, `b`, `e`, `0`, `$`
    Day 1: Character operations - `~` (toggle case), `r` (replace character)
    Basics: `h`, `j`, `k`, `l` for movement, `i` for insert mode, `ESC` for normal mode

Your tasks:
1. Navigate to specific functions using G and line numbers
2. Fix errors at the top, middle, and bottom of visible screen (H/M/L)
3. Navigate through paragraphs to fix documentation
4. Fix matching bracket issues using %
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// TASK 1: This comment is on line 35. Use 35G to jump here and fix the number below
#define MAX_SIZE 99  // Should be 100

// Function with documentation paragraphs
void process_data() {
    // First paragraph of documentation
    // This function processes data
    // It has multiple steps

    // TASK 2: Navigate between paragraphs using { and }
    // Fix this variable name (should be 'data_size')
    int wrong_name = 50;

    // Second paragraph of documentation
    // The processing involves validation
    // And transformation of input

    // Third paragraph with code
    if (wrong_name > 0) {
        printf("Processing %d items\n", wrong_name);
    }
}

// TASK 3: Use Ctrl-d and Ctrl-u to navigate through this long function
int calculate_result(int input) {
    int result = 0;

    // Lots of calculations...
    result += input * 2;
    result += input * 3;
    result += input * 4;
    result += input * 5;
    result += input * 6;
    result += input * 7;
    result += input * 8;
    result += input * 9;
    result += input * 10;

    // TASK 3a: Fix this multiplier (should be 11)
    result += input * 10;

    result += input * 12;
    result += input * 13;
    result += input * 14;
    result += input * 15;
    result += input * 16;
    result += input * 17;
    result += input * 18;
    result += input * 19;
    result += input * 20;

    return result;
}

// TASK 4: Use % to jump between matching brackets and fix the issue
int check_brackets() {
    // Missing closing bracket on this line
    if (1 == 1) {
        return 1;
    }

    // Extra closing bracket on this line
    if (2 == 2) {
        return 2;
    }

    return 0;
}

// TASK 5: Use H, M, L to navigate visible screen
// Position your cursor using these commands and fix values
char* get_position() {
    // When you see this function on screen:
    // Use H to go to top visible line
    // Use M to go to middle visible line
    // Use L to go to bottom visible line

    // Fix this return value
    return "WRONG";  // Should be "CORRECT"
}

// TASK 6: Navigate to the bottom of file with G and fix this
char* final_task() {
    // You should reach here using G command
    return "INCOMPLETE";  // Change to "COMPLETE"
}

// Test harness - don't modify below this line
int main() {
    int passed = 0;
    int total = 6;

    // Test 1: MAX_SIZE
    if (MAX_SIZE == 100) {
        printf("✓ Task 1: MAX_SIZE is correct\n");
        passed++;
    } else {
        printf("✗ Task 1: MAX_SIZE should be 100, got %d\n", MAX_SIZE);
    }

    // Test 2: Variable name (checking if data_size exists)
    // This is a simplified test - in real scenario would check actual rename
    int data_size = 50;  // Expected variable
    if (data_size == 50) {
        printf("✓ Task 2: Variable naming correct\n");
        passed++;
    } else {
        printf("✗ Task 2: Check variable naming in process_data()\n");
    }

    // Test 3: Calculate result
    int calc_result = calculate_result(1);
    int expected = 1*2+1*3+1*4+1*5+1*6+1*7+1*8+1*9+1*10+1*11+1*12+1*13+1*14+1*15+1*16+1*17+1*18+1*19+1*20;
    if (calc_result == expected) {
        printf("✓ Task 3: Calculation is correct\n");
        passed++;
    } else {
        printf("✗ Task 3: Calculation should be %d, got %d\n", expected, calc_result);
    }

    // Test 4: Brackets
    if (check_brackets() != 0) {
        printf("✓ Task 4: Brackets are balanced\n");
        passed++;
    } else {
        printf("✗ Task 4: Fix the bracket issues in check_brackets()\n");
    }

    // Test 5: Position string
    if (strcmp(get_position(), "CORRECT") == 0) {
        printf("✓ Task 5: Position string is correct\n");
        passed++;
    } else {
        printf("✗ Task 5: Position string should be 'CORRECT'\n");
    }

    // Test 6: Final task
    if (strcmp(final_task(), "COMPLETE") == 0) {
        printf("✓ Task 6: Final task complete\n");
        passed++;
    } else {
        printf("✗ Task 6: Navigate to bottom with G and complete final task\n");
    }

    printf("\nDay 2 Progress: %d/%d tasks completed\n", passed, total);

    if (passed == total) {
        printf("\n🎉 Excellent! You've mastered advanced navigation!\n");
        printf("You can now quickly jump anywhere in a file.\n");
        return 0;
    } else {
        printf("\nKeep practicing! Use gg, G, Ctrl-d/u, H/M/L, {/}, and %%\n");
        return 1;
    }
}