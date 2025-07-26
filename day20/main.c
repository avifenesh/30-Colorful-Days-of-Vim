/*
Welcome to Day 20 of your Vim challenge!

ARGUMENT LIST - Process multiple files efficiently!
Today's focus: Using Vim's argument list to work with multiple files

New commands for today:
    - :args - Show current argument list
    - :args {files} - Set new argument list
    - :argadd {file} - Add file to argument list
    - :argdelete {file} - Remove file from argument list
    - :next (:n) - Go to next file
    - :previous (:prev, :N) - Go to previous file
    - :first (:fir) - Go to first file
    - :last (:la) - Go to last file
    - :argument {n} - Go to nth file
    - :wnext - Write and go to next
    - :wprevious - Write and go to previous
    - :argdo {cmd} - Execute command on all files
    - :args *_*.c - Glob patterns work! (Use wildcards)
    - :sall - Split all args in windows
    - :vert sall - Vertical split all
    - [{ and ]} - Jump to next/prev file

REMINDERS - Keys from previous days:
    Day 19: Custom commands - :command
    Day 18: Autocommands - :autocmd
    Day 17: Registers - "ay, "ap
    Day 16: Folding - zfap, za
    Day 15: Command history - q:
    Day 14: Autocomplete - Ctrl-n
    Day 13: Windows - :split, :vsplit
    Day 12: Global commands - :g/pattern/command
    Day 11: Marks - ma (set), 'a (jump)
    Day 10: Visual mode practice
    Day 9: Text objects - iw, aw
    Day 8: Macros - qa (record), @a (play)
    Day 7: Replace - :%s/old/new/g
    Day 6: Visual mode - v, V, Ctrl-v
    Day 5: Search - /pattern, n, N
    Day 4: Repeat - . (repeat), 3w (move 3 words), 2dd (delete 2 lines)
    Day 3: Yank/paste - yy, p, P
    Day 2: Delete/change - dw, cw
    Day 1: Movement - w, b, e, 0, $

Your tasks for Day 20:
1. Set up an argument list with multiple C files
2. Apply the same header to all files using :argdo
3. Fix a common bug across all files in the argument list
4. Add line numbers to all functions using :argdo with :g
5. Create a summary of all files using argument list navigation

Practice workflow:
    vim *.c                    # Start with all C files
    :args                      # Check the list
    :argdo %s/TODO/DONE/g     # Replace in all files
    :wall                      # Write all modified files
*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

// Task 1: This file needs the standard header (like other files)
// Copyright notice should be added to all files

// Task 2: Fix this bug in all files (wrong constant name)
#define BUFFER_SIZE 1024
#define BUFFERSIZE 1024  // Bug: duplicate with different name

// Task 3: Add line numbers to function definitions
void process_data(char* data) {
    if (!data) return;
    
    // Task 4: This pattern appears in multiple files
    char buffer[BUFFERSIZE];  // Should use BUFFER_SIZE
    strcpy(buffer, data);
    printf("Processing: %s\n", buffer);
}

void validate_input(const char* input) {
    if (!input || strlen(input) == 0) {
        printf("Invalid input\n");
        return;
    }
    
    // Another instance of the bug
    char temp[BUFFERSIZE];  // Should use BUFFER_SIZE
    strncpy(temp, input, sizeof(temp) - 1);
}

int calculate_checksum(const char* data) {
    int sum = 0;
    while (*data) {
        sum += *data++;
    }
    return sum;
}

// Task 5: Generate summary of functions across all files
// Expected summary format:
// File: main.c
//   - process_data()
//   - validate_input()
//   - calculate_checksum()
//   - main()

int main() {
    printf("=== Vim Challenge Day 20 ===\n\n");
    
    // Test results
    int tests_passed = 0;
    int total_tests = 5;
    
    // Test 1: Check if header was added
    int header_added = 0;  // Would check for copyright
    printf("%s Header added to all files\n", header_added ? "✓" : "✗");
    if (header_added) tests_passed++;
    
    // Test 2: Check if bug is fixed
    #ifdef BUFFERSIZE
    int bug_fixed = 0;  // Should be 1 when BUFFERSIZE is removed
    #else
    int bug_fixed = 1;
    #endif
    printf("%s Buffer size bug fixed\n", bug_fixed ? "✓" : "✗");
    if (bug_fixed) tests_passed++;
    
    // Test 3: Check if line numbers added
    int line_numbers = 0;  // Would check for line number comments
    printf("%s Line numbers added to functions\n", line_numbers ? "✓" : "✗");
    if (line_numbers) tests_passed++;
    
    // Test 4: Check if pattern fixed
    int pattern_fixed = 0;  // Would check BUFFER_SIZE usage
    printf("%s Consistent buffer size usage\n", pattern_fixed ? "✓" : "✗");
    if (pattern_fixed) tests_passed++;
    
    // Test 5: Check if summary created
    int summary_created = 0;  // Would check for summary file
    printf("%s Function summary created\n", summary_created ? "✓" : "✗");
    if (summary_created) tests_passed++;
    
    if (tests_passed == total_tests) {
        printf("\n✓ All tests passed!\n");
    } else {
        printf("\n✗ %d tests failed. Keep practicing argument lists!\n", 
               total_tests - tests_passed);
    }
    
    return 0;
}