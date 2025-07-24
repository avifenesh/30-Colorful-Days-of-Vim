/*
Welcome to Day 2 of your Vim challenge!

Today's lesson focuses on deletion and change operations.

New keys for today:
    - `dw`: Delete from the cursor to the beginning of the next word.
    - `db`: Delete from the cursor to the beginning of the previous word.
    - `de`: Delete from the cursor to the end of the current word.
    - `d$`: Delete from the cursor to the end of the line.
    - `d0`: Delete from the cursor to the beginning of the line.
    - `cw`: Change from the cursor to the beginning of the next word.
    - `cb`: Change from the cursor to the beginning of the previous word.
    - `ce`: Change from the cursor to the end of the current word.
    - `c$`: Change from the cursor to the end of the line.
    - `c0`: Change from the cursor to the beginning of the line.

REMINDERS - Keys from previous days:
    Day 1: Word/line movement - `w`, `b`, `e`, `0`, `$`
    Day 1: Character operations - `~` (toggle case), `r` (replace character)
    Basics: `h`, `j`, `k`, `l` for movement, `i` for insert mode, `ESC` for normal mode


Your tasks:
1.  In the line with the comment "// TASK 1", delete the word "extra".
2.  In the line with the comment "// TASK 2", change the word "wrong" to "right".
3.  In the line with the comment "// TASK 3", delete the second sentence.
*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

// TASK 1: This line has an extra word.
char* task1_result() {
    return "This line has an word.";
}

// TASK 2: This is the wrong text.
char* task2_result() {
    return "This is the right text.";
}

// TASK 3: This is the first sentence. This is the second sentence.
char* task3_result() {
    return "This is the first sentence.";
}

int main() {
    printf("=== Vim Challenge Day 2 ===\n\n");

    // Test 1: Check if "extra" was deleted
    char* result1 = task1_result();
    if (strcmp(result1, "This line has an word.") == 0) {
        printf("✓ Task 1 passed!\n");
    } else {
        printf("✗ Task 1 failed. Expected: 'This line has an word.'\n");
        printf("  Got: '%s'\n", result1);
    }

    // Test 2: Check if "wrong" was changed to "right"
    char* result2 = task2_result();
    if (strcmp(result2, "This is the right text.") == 0) {
        printf("✓ Task 2 passed!\n");
    } else {
        printf("✗ Task 2 failed. Expected: 'This is the right text.'\n");
        printf("  Got: '%s'\n", result2);
    }

    // Test 3: Check if second sentence was deleted
    char* result3 = task3_result();
    if (strcmp(result3, "This is the first sentence.") == 0) {
        printf("✓ Task 3 passed!\n");
    } else {
        printf("✗ Task 3 failed. Expected: 'This is the first sentence.'\n");
        printf("  Got: '%s'\n", result3);
    }

    return 0;
}
