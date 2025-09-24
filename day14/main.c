/*
 * Welcome to Day 14 of your Vim challenge!
 *
 * VISUAL MODE MASTERY - Advanced selection techniques!
 * Today's focus: Advanced visual mode operations and selection control
 *
 * New commands for today:
 *     - `gv` - Re-select the last visual selection
 *     - `o` - Move to other end of visual selection (in visual mode)
 *     - `O` - Move to other corner of visual block selection (in visual block mode)
 *     - `v` in visual mode - Switch between char/line/block visual modes
 *     - `Ctrl-v` in visual mode - Switch to visual block mode
 *     - `V` in visual mode - Switch to visual line mode
 *     - `u` in visual mode - Make selection lowercase
 *     - `U` in visual mode - Make selection uppercase
 *     - `~` in visual mode - Toggle case of selection
 *     - `>` in visual mode - Indent selection
 *     - `<` in visual mode - Un-indent selection
 *     - `J` in visual mode - Join selected lines
 *
 * REMINDERS - Keys from previous days:
 *     Day 13: Registers - `"ay`, `"ap`, `"_d`, `:reg`
 *     Day 12: Marks - `ma`, `'a`, ``` (jump to last edit)
 *     Day 11: Global commands - `:g/pattern/d`, `:v/pattern/d`
 *     Day 10: Visual mode practice - `v`, `V`, `Ctrl-v`
 *     Day 9: Text objects - `iw`, `aw`, `i"`, `a"`
 *     Day 8: Macros - `qa`, `@a`
 *     Day 7: Replace - `:%s/old/new/g`
 *     Day 6: Visual mode - `v`, `V`, `Ctrl-v`
 *     Day 5: Search - `/pattern`, `n`, `N`
 *     Day 4: Repeat - `.`, `3w`, `2dd`
 *     Day 3: Yank/paste - `yy`, `p`, `P`
 *     Day 2: Delete/change - `dw`, `cw`
 *     Day 1: Movement - `w`, `b`, `e`, `0`, `$`
 *
 * Your tasks for Day 14:
 * 1. Fix function names using visual selection and case operations
 * 2. Use `gv` to re-select and modify the same text multiple times
 * 3. Use `o` to extend selections from both ends efficiently
 * 4. Use visual block mode with `O` to select rectangular regions
 * 5. Format code blocks using visual mode indentation
 * 6. Join lines using visual line mode and `J`
 */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

// Task 1: Fix these function names - they should be camelCase, not snake_case
// Use visual selection and case operations to fix them efficiently

// WRONG: should be calculateSum (select visual, use u/U to fix case)
int calculate_sum(int a, int b) {
    return a + b;
}

// WRONG: should be processString (use gv to reselect after first fix)
char* process_string(const char* input) {
    static char result[256];
    strcpy(result, input);
    return result;
}

// WRONG: should be validateInput (use o to extend selection efficiently)
int validate_input(int value) {
    return value > 0 && value < 1000;
}

// Task 2: These variable declarations need formatting
// Use visual block mode to select and align the equal signs
int     first_var=10;        // Align these equal signs
double  second_var=20.5;     // using visual block selection
char    third_var='A';       // and formatting operations
float   fourth_var=3.14;

// Task 3: This function header needs to be joined into one line
// Use visual line mode and J to join the lines
int complex_calculation(
    int param1,
    int param2,
    double param3
) {
    return param1 + param2 + (int)param3;
}

// Task 4: Fix the indentation of this nested structure
// Use visual mode with > and < to fix indentation
struct Config {
int port;           // Wrong indentation - should be indented
char* host;         // Fix using visual selection and >
struct {
int timeout;    // Nested structure needs proper indentation
int retries;    // Use visual mode to select and indent
} connection;
};

// Task 5: These comments need to be aligned
// Use visual block mode to select and format them
void print_status() {
    printf("System status: OK");        // Status message
    printf("Connection: Active");       // Connection info
    printf("Users: %d", 42);           // User count
    printf("Uptime: %d hours", 24);    // Uptime info
}

// Task 6: Convert this data to a formatted table using visual selections
// Select each line and use visual mode operations to format
void display_data() {
    // Raw data that needs formatting into aligned columns:
    printf("Item1 Price10.50 Qty5\n");
    printf("Item2 Price25.00 Qty3\n");
    printf("Item3 Price7.25 Qty10\n");
    printf("Item4 Price15.75 Qty7\n");

    // Should become something like:
    // printf("Item1    Price: $10.50    Qty: 5\n");
    // (Use visual block mode to insert colons, dollar signs, spaces)
}

// Test functions
void test_function_names() {
    printf("Testing function name fixes...\n");

    // Test that functions work (names should be fixed to camelCase)
    int sum = calculate_sum(5, 3);  // Should be calculateSum
    printf("Sum result: %d\n", sum);

    char* processed = process_string("test");  // Should be processString
    printf("Processed: %s\n", processed);

    int valid = validate_input(50);  // Should be validateInput
    printf("Validation: %d\n", valid);

    printf("✓ Function tests passed (check function names manually)\n");
}

void test_formatting() {
    printf("Testing code formatting...\n");

    // Test that variables are declared and accessible
    printf("Variables: %d, %.1f, %c, %.2f\n",
           first_var, second_var, third_var, fourth_var);

    // Test the joined function
    int result = complex_calculation(1, 2, 3.0);
    printf("Complex calculation: %d\n", result);

    printf("✓ Formatting tests passed (check alignment manually)\n");
}

void test_structure_and_display() {
    printf("Testing structure and display...\n");

    // Test the struct (should be properly indented)
    struct Config config = {8080, "localhost", {30, 3}};
    printf("Config - Port: %d, Host: %s\n", config.port, config.host);

    // Test the status display (should have aligned comments)
    print_status();

    // Test the data display (should be formatted as table)
    printf("Data display:\n");
    display_data();

    printf("✓ Structure and display tests passed (check formatting manually)\n");
}

int main() {
    printf("=== Vim Challenge Day 14 ===\n");
    printf("Visual Mode Mastery Challenge\n\n");

    test_function_names();
    printf("\n");

    test_formatting();
    printf("\n");

    test_structure_and_display();
    printf("\n");

    printf("Manual checks required:\n");
    printf("1. Function names converted to camelCase (calculateSum, processString, validateInput)\n");
    printf("2. Variable declarations aligned with proper spacing\n");
    printf("3. Function header joined into single line\n");
    printf("4. Struct members properly indented\n");
    printf("5. Comments aligned in print_status function\n");
    printf("6. Data formatted as aligned table in display_data\n");

    printf("\nRemember: Use gv to re-select, o to move selection ends,\n");
    printf("visual block mode for rectangular selections, and >< for indentation!\n");

    return 0;
}