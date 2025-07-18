/*
Welcome to Day 2 of your Vim challenge!

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

Reminder from Day 1:
    - `w`, `b`, `e`, `0`, `$` for movement.


Your tasks:
1.  In the line with the comment "// TASK 1", delete the word "extra".
2.  In the line with the comment "// TASK 2", change the word "wrong" to "right".
3.  In the line with the comment "// TASK 3", delete the second sentence.
*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

// TASK 1: Delete the word "bug" from this function
char* fix_message() {
    return "This is a bug test";  // Delete "bug"
}

// TASK 2: Delete everything inside the parentheses
char* get_greeting() {
    return "Hello (delete this text) World!";
}

// TASK 3: Change "wrong" to "right"
char* get_status() {
    return "This is wrong";  // Change to "right"
}

int main() {
    printf("=== Vim Challenge Day 2 ===\n\n");
    
    // Test 1
    char* msg = fix_message();
    if (strstr(msg, "bug") == NULL) {
        printf("✓ Task 1 passed!\n");
    } else {
        printf("✗ Task 1 failed. Still contains 'bug'\n");
    }
    
    // Test 2
    char* greeting = get_greeting();
    if (strcmp(greeting, "Hello  World!") == 0) {
        printf("✓ Task 2 passed!\n");
    } else {
        printf("✗ Task 2 failed. Expected: 'Hello  World!', Got: '%s'\n", greeting);
    }
    
    // Test 3
    char* status = get_status();
    if (strstr(status, "right") != NULL && strstr(status, "wrong") == NULL) {
        printf("✓ Task 3 passed!\n");
    } else {
        printf("✗ Task 3 failed. Should contain 'right', not 'wrong'\n");
    }
    
    return 0;
}