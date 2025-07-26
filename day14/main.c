/*
Welcome to Day 14 of your Vim challenge!

AUTOCOMPLETE - Speed up your coding!
Today's focus: Using Vim's built-in completion features

New commands for today:
    - `Ctrl-n` - Next completion (searches forward in file)
    - `Ctrl-p` - Previous completion (searches backward in file)
    - `Ctrl-x Ctrl-l` - Line completion (complete entire lines)
    - `Ctrl-x Ctrl-f` - Filename completion
    - `Ctrl-x Ctrl-]` - Tag completion
    - `Ctrl-x Ctrl-o` - Omni completion (language-aware)
    - `Ctrl-x Ctrl-k` - Dictionary completion
    - `Ctrl-x Ctrl-i` - Include/import completion
    - `Ctrl-x Ctrl-n` - Keyword completion (current file)
    - `Ctrl-x Ctrl-p` - Keyword completion (backward)
    - `Ctrl-y` - Accept completion
    - `Ctrl-e` - Cancel completion

REMINDERS - Keys from previous days:
    Day 13: Windows - `:split`, `:vsplit`, `Ctrl-w w`
    Day 12: Global commands - `:g/pattern/d`, `:g/pattern/m$`
    Day 11: Marks - `ma`, `'a`
    Day 10: Visual mode practice
    Day 9: Text objects - `iw`, `aw`, `i"`, `a"`
    Day 8: Macros - `qa`, `@a`
    Day 7: Replace - `:%s/old/new/g`
    Day 6: Visual mode - `v`, `V`, `Ctrl-v`
    Day 5: Search - `/pattern`, `n`, `N`
    Day 4: Repeat - `.`, `3w`, `2dd`
    Day 3: Yank/paste - `yy`, `p`, `P`
    Day 2: Delete/change - `dw`, `cw`
    Day 1: Movement - `w`, `b`, `e`, `0`, `$`

Your tasks for Day 14:
1. Complete all the partial function names using Ctrl-n/Ctrl-p
2. Use line completion to duplicate the ERROR_MESSAGES pattern for SUCCESS_MESSAGES
3. Complete the #include statements with the correct headers
4. Fill in the struct member types using completion from existing code
5. Complete the function calls in test_completion() using existing function names
*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
// Task 3: Complete these includes using Ctrl-x Ctrl-f
// #include <stdint.h>  // Uncomment and complete
// #include <stdbool.h>  // Uncomment and complete
// #include <time.h>  // Uncomment and complete

// Constants for testing
#define MAX_BUFFER_SIZE 1024
#define MIN_BUFFER_SIZE 64
#define DEFAULT_TIMEOUT 5000

// Task 2: Use Ctrl-x Ctrl-l to duplicate this pattern for SUCCESS_MESSAGES
const char* ERROR_MESSAGES[] = {
    "Error: Invalid input",
    "Error: Buffer overflow", 
    "Error: Timeout exceeded"
};

// Add SUCCESS_MESSAGES here using line completion

// Task 4: Complete the struct member types (add missing characters)
typedef struct {
    char name[50];      // Task: ch* should be completed to char*
    int age;            // Task: in should be completed to int  
    float salary;       // Task: flo should be completed to float
    int is_active;      // Task: bo should be completed to bool (after including stdbool.h)
} Person;

// Existing functions for completion reference
void initialize_buffer(char* buffer, size_t size) {
    memset(buffer, 0, size);
}

int validate_input(const char* input) {
    return input != NULL && strlen(input) > 0;
}

void process_person(Person* person) {
    if (person && person->is_active) {
        printf("Processing: %s\n", person->name);
    }
}

// Task 1: Complete these function names using Ctrl-n
void init() {            // Should be initialize_buffer
    // Implementation
}

int val() {              // Should be validate_input  
    // Implementation
    return 0;
}

void proc() {            // Should be process_person
    // Implementation
}

// Task 5: Complete the function calls
void test_completion() {
    char buffer[MAX_BUFFER_SIZE];
    Person person = {.age = 30, .salary = 50000.0f, .is_active = 1};
    strcpy(person.name, "John");
    
    // Complete these function calls using Ctrl-n
    // ini(buffer, MAX_BUFFER_SIZE);     // Should be initialize_buffer
    
    if (val("test")) {                 // Should be validate_input
        // pro(&person);                  // Should be process_person
    }
}

int main() {
    printf("=== Vim Challenge Day 14 ===\n\n");
    
    // Test results
    int tests_passed = 0;
    int total_tests = 5;
    
    // Test 1: Check if function names are completed
    int functions_completed = 0; // Would check if init/val/proc are properly named
    
    // Test 2: Check if SUCCESS_MESSAGES exists
    int success_messages_added = 0; // Would check for SUCCESS_MESSAGES array
    
    // Test 3: Check if includes are completed
    int includes_completed = 0; // Would check if all includes are uncommented
    
    // Test 4: Check if struct types are completed  
    int struct_completed = 0; // Would check if types are correct
    
    // Test 5: Check if function calls are completed
    int calls_completed = 0; // Would check if function calls use full names
    
    // Display results
    printf("%s Function names completed\n", functions_completed ? "✓" : "✗");
    printf("%s SUCCESS_MESSAGES added\n", success_messages_added ? "✓" : "✗");
    printf("%s Include statements completed\n", includes_completed ? "✓" : "✗");
    printf("%s Struct member types completed\n", struct_completed ? "✓" : "✗");
    printf("%s Function calls completed\n", calls_completed ? "✓" : "✗");
    
    if (functions_completed && success_messages_added && includes_completed && 
        struct_completed && calls_completed) {
        printf("\n✓ All tests passed!\n");
    } else {
        printf("\n✗ Some tests failed. Keep practicing autocomplete!\n");
    }
    
    return 0;
}