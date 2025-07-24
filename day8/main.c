/*
Welcome to Day 8 of your Vim challenge!

Today we'll learn about macros - recording and playing back sequences of commands.

New keys for today:
    - `q{register}`: Start recording a macro into {register}.
    - `q`: Stop recording.
    - `@{register}`: Play back the macro from {register}.
    - `@@`: Repeat the last played macro.

REMINDERS - Keys from previous days:
    Day 7: Search/replace - `/`, `?`, `n`, `N`, `:%s/old/new/g`
    Day 6: Visual mode - `v`, `V`, `Ctrl-v`, `>`, `<`, `=`
    Day 5: Replace commands - `:s/old/new/`, `:%s/old/new/g`
    Day 4: Repeat/counts - `.` (repeat), `3w`, `2dd`
    Day 3: Yank/paste - `yy`, `p`, `P`

Your tasks:
1. Use a macro to add semicolons to the end of each line in the array initialization
2. Use a macro to convert the function names from camelCase to snake_case
3. Use a macro to add "printf" debugging to each function
*/

#include <stdio.h>
#include <string.h>

// Task 1: Add semicolons to each line (use a macro!)
// The following lines are missing semicolons and will cause a compilation error.
// Use a macro to add semicolons at the end of each line.
int numbers[] = {
	1,
	2,
	3,
	4,
	5
};

// Task 2: Convert function names to snake_case
int calculate_sum(int a, int b) {
	printf("Function: calculate_sum\n");
	return a + b;
}

int find_maximum(int a, int b) {
	printf("Function: find_maximum\n");
	return a > b ? a : b;
}

int get_string_length(char* str) {
	printf("Function: get_string_length\n");
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

	// Test function return values
	int sum_result = calculate_sum(5, 3);
	int max_result = find_maximum(10, 7);
	int len_result = get_string_length("hello");

	// Verify function logic works correctly
	if (sum_result == 8 && max_result == 10 && len_result == 5) {
		printf("✓ Functions return correct values\n");
	} else {
		printf("✗ Function logic error\n");
	}

	// Note: Tasks 2 and 3 require manual verification
	printf("\n📝 Tasks 2 & 3 require manual verification:\n");
	printf("- Task 2: Function names should be snake_case (calculate_sum, find_maximum, get_string_length)\n");
	printf("- Task 3: Each function should have a printf at the start\n");
	printf("\nActual function output:\n");

	// Call functions again to show their printf output
	calculate_sum(1, 1);
	find_maximum(1, 1);
	get_string_length("test");

	return 0;
}
