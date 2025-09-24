/*
Welcome to Day 1 of your Vim challenge!

Today's lesson focuses on more efficient movement and simple edits.

New keys for today:
    - `w`: Move forward one word at a time.
    - `b`: Move backward one word at a time.
    - `e`: Move to the end of the current word.
    - `0`: Move to the beginning of the current line.
    - `$`: Move to the end of the current line.
    - `~`: Change the case of the character under the cursor.
    - `r`: Replace the character under the cursor.

REMINDERS - Keys from previous days:
    - Basic movement: `h` (left), `j` (down), `k` (up), `l` (right)
    - `i`: Enter insert mode
    - `ESC`: Return to normal mode
    - `:w`: Save file
    - `:q`: Quit vim
    - `:wq`: Save and quit

Your tasks:
1. Fix the string_case_fix function to return the correct string
2. Fix the count_apples function to return the correct number
3. Fix the get_status function to return the correct status
*/

#include <stdio.h>
#include <string.h>

// TASK 1: Fix the casing in the return string
char* string_case_fix() {
    // cORRECT tHE cASING oF tHIS lINE
    return "cORRECT tHE cASING oF tHIS lINE";
}

// TASK 2: Fix the return value
int count_apples() {
    // There are X apples (Replace X with 5)
    return 5;  // Fix this to return 5
}

// TASK 3: Fix the return string
char* get_status() {
    // This is the wrong line
    return "wrong";  // Change this to "right"
}

// Test functions
void test_case_fix() {
    char* result = string_case_fix();
    if (strcmp(result, "Correct The Casing Of This Line") == 0) {
        printf("✓ Task 1 passed!\n");
    } else {
        printf("✗ Task 1 failed. Expected: 'Correct The Casing Of This Line', Got: '%s'\n", result);
    }
}

void test_count() {
    int result = count_apples();
    if (result == 5) {
        printf("✓ Task 2 passed!\n");
    } else {
        printf("✗ Task 2 failed. Expected: 5, Got: %d\n", result);
    }
}

void test_status() {
    char* result = get_status();
    if (strcmp(result, "right") == 0) {
        printf("✓ Task 3 passed!\n");
    } else {
        printf("✗ Task 3 failed. Expected: 'right', Got: '%s'\n", result);
    }
}

int main() {
    printf("=== Vim Challenge Day 1 ===\n\n");

    test_case_fix();
    test_count();
    test_status();

    return 0;
}
