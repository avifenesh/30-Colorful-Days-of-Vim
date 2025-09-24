/*
Welcome to Day 8 of your Vim challenge!

SEARCH & REPLACE - Find and modify text efficiently!

New keys for today:
    - `/pattern`: Search forward for pattern
    - `?pattern`: Search backward for pattern
    - `n`: Next match in same direction
    - `N`: Next match in opposite direction
    - `*`: Search for word under cursor forward
    - `#`: Search for word under cursor backward
    - `:noh`: Clear search highlighting
    - `:s/old/new/`: Replace first on line
    - `:s/old/new/g`: Replace all on line
    - `:%s/old/new/g`: Replace all in file
    - `:%s/old/new/gc`: Replace all with confirmation
    - `:5,10s/old/new/g`: Replace in lines 5-10
    - `&`: Repeat last substitution
    - `g&`: Repeat last substitution globally
    - `/\<word\>`: Search for whole word
    - `/pattern\c`: Case-insensitive search
    - `q/`: Open search history window

REMINDERS - Keys from previous days:
    Day 7: Visual mode - `v`, `V`, `Ctrl-v`, `>`, `<`, `gv`
    Day 6: Insert mode - `i`, `a`, `I`, `A`, `o`, `O`
    Day 5: Character navigation - `f`, `F`, `t`, `T`, `%`
    Day 4: Yank/paste/undo - `yy`, `p`, `P`, `u`, `Ctrl-r`
    Day 3: Delete/change - `dw`, `cw`, `dd`, `cc`, `D`, `C`

Your tasks:
1. Use search to find and fix errors
2. Use * and # for word search
3. Use :s for line replacements
4. Use :%s for global replacements
5. Use range replacements
6. Practice search patterns
*/

#include <stdio.h>
#include <string.h>

// TASK 1: Use / to search for "ERROR" and fix each one
char* task1_search_fix() {
    // Search for ERROR and replace with SUCCESS
    char* status1 = "Status: ERROR";  // Fix to "Status: SUCCESS"
    char* status2 = "Result: ERROR";  // Fix to "Result: SUCCESS"
    char* status3 = "Final: ERROR";   // Fix to "Final: SUCCESS"

    // Concatenate for testing
    static char result[100];
    sprintf(result, "%s %s %s", status1, status2, status3);
    return result;
}

// TASK 2: Use * on "bug" to find all occurrences
char* task2_word_search() {
    // Position on "bug" and use * to find all, then fix
    char* line1 = "This bug is a bug that needs fixing";  // Remove second "bug"
    char* line2 = "Another bug here";  // Change "bug" to "feature"
    char* line3 = "No bug in this line";  // Change "bug" to "feature"

    static char result[200];
    sprintf(result, "%s | %s | %s", line1, line2, line3);
    return result;
}

// TASK 3: Use :s/old/new/g on each line
char* task3_line_replace() {
    // Use :s/wrong/right/g on each line
    char* config1 = "wrong_setting = wrong_value";  // Both should be "right"
    char* config2 = "wrong_path = /wrong/location"; // Both should be "right"
    char* config3 = "wrong_mode = wrong";          // Both should be "right"

    static char result[200];
    sprintf(result, "%s; %s; %s", config1, config2, config3);
    return result;
}

// TASK 4: Use :%s/old/new/g for global replace
int task4_global_replace() {
    // Use :%s/FIXME/TODO/g to replace all
    char* comments[] = {
        "FIXME: First item",   // Should be "TODO"
        "FIXME: Second item",  // Should be "TODO"
        "FIXME: Third item",   // Should be "TODO"
        "FIXME: Fourth item"   // Should be "TODO"
    };

    // Count how many still say FIXME (should be 0)
    int fixme_count = 0;
    for (int i = 0; i < 4; i++) {
        if (strstr(comments[i], "FIXME") != NULL) {
            fixme_count++;
        }
    }
    return fixme_count;  // Should return 0
}

// TASK 5: Use range replacement :10,15s/old/new/g
char* task5_range_replace() {
    // Lines 10-15 in this context (simulate with array)
    // Use :10,15s/bad/good/g
    char lines[20][50] = {
        "Line 1: ok",
        "Line 2: ok",
        "Line 3: ok",
        "Line 4: ok",
        "Line 5: ok",
        "Line 6: ok",
        "Line 7: ok",
        "Line 8: ok",
        "Line 9: ok",
        "Line 10: bad value",    // Should change to "good"
        "Line 11: bad setting",  // Should change to "good"
        "Line 12: bad config",   // Should change to "good"
        "Line 13: bad option",   // Should change to "good"
        "Line 14: bad choice",   // Should change to "good"
        "Line 15: bad item",     // Should change to "good"
        "Line 16: ok",
        "Line 17: ok",
        "Line 18: ok",
        "Line 19: ok"
    };

    // Check line 10-15 for testing
    if (strstr(lines[10], "good") && strstr(lines[14], "good")) {
        return "Range replacement successful";
    }
    return "Range replacement failed";
}

// TASK 6: Practice search patterns
int task6_search_patterns() {
    // Use these patterns:
    // /\<test\> - whole word
    // /[0-9]+ - numbers
    // /^# - lines starting with #

    char* text[] = {
        "test123",      // Not whole word "test"
        "test",         // Whole word "test" - count this
        "testing",      // Not whole word "test"
        "test case",    // Whole word "test" - count this
        "protest"       // Not whole word "test"
    };

    // Count whole word "test" occurrences (should be 2)
    int count = 0;
    // Simulate finding with \<test\>
    if (strcmp(text[1], "test") == 0) count++;
    if (strncmp(text[3], "test ", 5) == 0) count++;

    return count;  // Should return 2
}

// Test runner
int main() {
    int passed = 0;
    int total = 6;

    // Test 1: Search and fix
    char* expected1 = "Status: SUCCESS Result: SUCCESS Final: SUCCESS";
    if (strcmp(task1_search_fix(), expected1) == 0) {
        printf("✓ Task 1: Search and fix successful\n");
        passed++;
    } else {
        printf("✗ Task 1: Use / to search for ERROR and fix\n");
    }

    // Test 2: Word search
    char* expected2 = "This bug is a that needs fixing | Another feature here | No feature in this line";
    if (strcmp(task2_word_search(), expected2) == 0) {
        printf("✓ Task 2: Word search with * successful\n");
        passed++;
    } else {
        printf("✗ Task 2: Use * to search for word under cursor\n");
    }

    // Test 3: Line replace
    char* expected3 = "right_setting = right_value; right_path = /right/location; right_mode = right";
    if (strcmp(task3_line_replace(), expected3) == 0) {
        printf("✓ Task 3: Line replacement successful\n");
        passed++;
    } else {
        printf("✗ Task 3: Use :s/wrong/right/g on each line\n");
    }

    // Test 4: Global replace
    if (task4_global_replace() == 0) {
        printf("✓ Task 4: Global replacement successful\n");
        passed++;
    } else {
        printf("✗ Task 4: Use :%%s/FIXME/TODO/g for global replace\n");
    }

    // Test 5: Range replace
    if (strcmp(task5_range_replace(), "Range replacement successful") == 0) {
        printf("✓ Task 5: Range replacement successful\n");
        passed++;
    } else {
        printf("✗ Task 5: Use :10,15s/bad/good/g for range\n");
    }

    // Test 6: Search patterns
    if (task6_search_patterns() == 2) {
        printf("✓ Task 6: Search patterns successful\n");
        passed++;
    } else {
        printf("✗ Task 6: Practice \\<word\\> for whole word search\n");
    }

    printf("\nDay 8 Progress: %d/%d tasks completed\n", passed, total);

    if (passed == total) {
        printf("\n🎉 Excellent! You've mastered search and replace!\n");
        printf("Search and replace are fundamental for efficient text editing.\n");
        return 0;
    } else {
        printf("\nKeep practicing! Master /, ?, n, N, *, #, and :s commands\n");
        printf("Tip: Learn regex patterns for powerful searching!\n");
        return 1;
    }
}