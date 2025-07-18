/*
Welcome to Day 8 of your Vim challenge!

Today we'll learn about macros - recording and playing back sequences of commands.

New keys for today:
    - `q{register}`: Start recording a macro into {register}.
    - `q`: Stop recording.
    - `@{register}`: Play back the macro from {register}.
    - `@@`: Repeat the last played macro.

Your tasks:
1. Use a macro to add semicolons to the end of each line in the array initialization
2. Use a macro to convert the function names from camelCase to snake_case
3. Use a macro to add "printf" debugging to each function
*/

#include <stdio.h>
#include <string.h>

// Task 1: Add semicolons to each line (use a macro!)
int numbers[] = {
    1,
    2,
    3,
    4,
    5
};

// Task 2: Convert function names to snake_case
int calculateSum(int a, int b) {
    return a + b;
}

int findMaximum(int a, int b) {
    return a > b ? a : b;
}

int getStringLength(char* str) {
    return strlen(str);
}

// Task 3: Add printf debugging to each function above
// Should add: printf("Function: <function_name>\n"); at the start of each function

int main() {
    printf("=== Vim Challenge Day 8 ===\n\n");
    
    // Test array initialization
    int array_sum = 0;
    for (int i = 0; i < 5; i++) {
        array_sum += numbers[i];
    }
    
    if (array_sum == 15) {
        printf("✓ Task 1 passed! Array properly initialized\n");
    } else {
        printf("✗ Task 1 failed. Check semicolons in array\n");
    }
    
    // Note: Tasks 2 and 3 require manual verification
    printf("\n📝 Tasks 2 & 3 require manual verification:\n");
    printf("- Task 2: Function names should be snake_case (calculate_sum, find_maximum, get_string_length)\n");
    printf("- Task 3: Each function should have a printf at the start\n");
    
    return 0;
}