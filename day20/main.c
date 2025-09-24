/*
Welcome to Day 20 of your Vim challenge!

AUTOCOMPLETE & ABBREVIATIONS - Speed up your coding with smart text expansion!
Today's focus: Using Vim's completion features and abbreviations for efficient editing

New commands for today:

AUTOCOMPLETE:
    - `Ctrl-n` - Next completion (searches forward in file)
    - `Ctrl-p` - Previous completion (searches backward in file)
    - `Ctrl-x Ctrl-l` - Line completion (complete entire lines)
    - `Ctrl-x Ctrl-f` - Filename completion
    - `Ctrl-x Ctrl-]` - Tag completion
    - `Ctrl-x Ctrl-o` - Omni completion (language-aware)
    - `Ctrl-x Ctrl-k` - Dictionary completion
    - `Ctrl-x Ctrl-i` - Include/import completion
    - `Ctrl-x Ctrl-n` - Keyword completion (current file)
    - `Ctrl-y` - Accept completion
    - `Ctrl-e` - Cancel completion

ABBREVIATIONS:
    - `:ab` - List all abbreviations
    - `:ab {lhs} {rhs}` - Create abbreviation for all modes
    - `:iab {lhs} {rhs}` - Insert mode abbreviation
    - `:cab {lhs} {rhs}` - Command-line abbreviation
    - `:una {lhs}` - Remove abbreviation
    - `:abclear` - Clear all abbreviations
    - `Ctrl-v` before abbr - Prevent expansion

REMINDERS - Keys from previous days:
    Day 19: Folding - `zf`, `za`, `zj/zk`, `zM/zR`
    Day 18: Macros - `qa`, `@a`, `@@`
    Day 17: Tabs - `:tabnew`, `gt`, `gT`
    Day 16: Windows - `:split`, `:vsplit`, `Ctrl-w w`
    Day 15: Buffers - `:ls`, `:b <name>`, `:bn/:bp`
    Day 14: Visual mode mastery - `gv`, `o` in visual mode
    Day 13: Registers - `"ay`, `"ap`, `"+y`
    Day 12: Marks & jumps - `ma`, `'a`, `Ctrl-o/Ctrl-i`

Your tasks for Day 20:
1. Use autocomplete to complete partial function names and variables
2. Set up practical abbreviations for common typos and snippets
3. Create command abbreviations for frequently used commands
4. Use filename completion for include statements
5. Combine autocomplete and abbreviations in a real coding workflow
6. Master expansion control and completion acceptance
*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include <time.h>

// Task 1: Use autocomplete (Ctrl-n/Ctrl-p) to complete these partial names
// Try typing the partial names and use completion to fill them out

// Configuration constants
#define MAX_BUFFER_SIZE 1024
#define MIN_BUFFER_SIZE 64
#define DEFAULT_TIMEOUT 5000
#define CONFIG_FILE_NAME "config.txt"

// Task 2: Set up abbreviations for common programming patterns
// Abbreviations to create in Vim:
// :iab #d #define
// :iab #i #include
// :iab pr printf
// :iab ret return
// :iab nul NULL
// :iab tru true
// :iab fal false

// Common error messages for completion practice
const char* ERROR_MESSAGES[] = {
    "Error: Invalid input parameter",
    "Error: Buffer overflow detected",
    "Error: Memory allocation failed",
    "Error: File not found",
    "Error: Permission denied"
};

// Task 3: Use line completion (Ctrl-x Ctrl-l) to create SUCCESS_MESSAGES
// Position cursor below and use Ctrl-x Ctrl-l to complete similar lines
const char* SUCCESS_MESSAGES[] = {
    // Use line completion to add similar messages here
    "Success: Operation completed successfully",
    "Success: Data processed without errors",
    "Success: File saved successfully"
};

// Structures for completion practice
typedef struct {
    char name[50];
    int age;
    float salary;
    bool is_active;
    uint32_t employee_id;
} Person;

typedef struct {
    char title[100];
    Person author;
    time_t created_date;
    size_t word_count;
} Document;

// Task 1: Complete these function names using Ctrl-n/Ctrl-p
// Start typing the partial name and use completion

// Full function names to complete from:
void initialize_buffer(char* buffer, size_t size) {
    if (buffer && size > 0) {
        memset(buffer, 0, size);
        printf("Buffer initialized with size: %zu\n", size);
    }
}

int validate_input_data(const char* input) {
    if (!input) {
        printf("Error: NULL input provided\n");
        return 0;
    }

    size_t len = strlen(input);
    if (len == 0) {
        printf("Error: Empty input provided\n");
        return 0;
    }

    printf("Input validation passed for: %s\n", input);
    return 1;
}

void process_document_content(Document* doc) {
    if (!doc) {
        printf("Error: NULL document pointer\n");
        return;
    }

    printf("Processing document: %s\n", doc->title);
    printf("Author: %s (Age: %d)\n", doc->author.name, doc->author.age);
    printf("Word count: %zu\n", doc->word_count);
}

// Task 1: Type these partial names and use Ctrl-n/Ctrl-p to complete
void init() {                    // Complete to initialize_buffer
    char buffer[MAX_BUFFER_SIZE];
    // init should become initialize_buffer
    printf("Stub: Should call initialize_buffer\n");
}

int valid() {                    // Complete to validate_input_data
    // valid should become validate_input_data
    printf("Stub: Should call validate_input_data\n");
    return 0;
}

void proc() {                    // Complete to process_document_content
    // proc should become process_document_content
    printf("Stub: Should call process_document_content\n");
}

// Task 4: File operations with filename completion
// Use Ctrl-x Ctrl-f to complete these filenames
void load_configuration() {
    FILE* config_file;

    // Type partial filename and use Ctrl-x Ctrl-f to complete
    // config_file = fopen("conf", "r");  // Complete to CONFIG_FILE_NAME
    config_file = fopen(CONFIG_FILE_NAME, "r");

    if (config_file) {
        printf("Configuration loaded from: %s\n", CONFIG_FILE_NAME);
        fclose(config_file);
    } else {
        printf("Failed to open configuration file\n");
    }
}

// Task 5: Practical workflow combining both features
void demonstrate_workflow() {
    printf("\n=== Autocomplete & Abbreviations Workflow ===\n");

    // Step 1: Use abbreviations for common patterns
    // Type: #i <space> -> #include
    // Type: #d <space> -> #define
    // Type: pr <space> -> printf

    // Step 2: Use autocomplete for function names
    char buffer[MAX_BUFFER_SIZE];
    initialize_buffer(buffer, sizeof(buffer));  // Use Ctrl-n to complete init

    // Step 3: Use completion for variable names
    if (validate_input_data("test data")) {     // Use Ctrl-n to complete valid
        Document test_doc = {0};
        strcpy(test_doc.title, "Test Document");
        strcpy(test_doc.author.name, "John Doe");
        test_doc.author.age = 30;
        test_doc.word_count = 1000;

        process_document_content(&test_doc);     // Use Ctrl-n to complete proc
    }
}

// Task 6: Command abbreviations examples
// Set up these command abbreviations in Vim:
// :cab W w
// :cab Q q!
// :cab WQ wq
// :cab H tab help
// :cab VG vimgrep

// Function to test abbreviations
void test_abbreviations() {
    printf("\n=== Testing Abbreviations ===\n");

    // These would be expanded by abbreviations:
    printf("Testing abbreviation expansions:\n");
    printf("- #d -> #define\n");
    printf("- #i -> #include\n");
    printf("- pr -> printf\n");
    printf("- ret -> return\n");
    printf("- nul -> NULL\n");

    // Common typos that could be fixed with abbreviations:
    printf("\nCommon typo fixes:\n");
    printf("- teh -> the\n");
    printf("- adn -> and\n");
    printf("- waht -> what\n");
}

// Task completion verification
void run_tests() {
    printf("\n=== Running Tests ===\n");

    int tests_passed = 0;
    int total_tests = 6;

    // Test 1: Autocomplete usage
    bool autocomplete_used = false;  // Would check if functions are completed
    printf("%s Autocomplete used to complete function names\n",
           autocomplete_used ? "✓" : "✗");
    if (autocomplete_used) tests_passed++;

    // Test 2: Abbreviations set up
    bool abbreviations_created = true;  // Placeholder for manual verification
    printf("%s Abbreviations created for common patterns\n",
           abbreviations_created ? "✓" : "✗");
    if (abbreviations_created) tests_passed++;

    // Test 3: Command abbreviations
    bool command_abbr_setup = true;  // Placeholder for manual verification
    printf("%s Command abbreviations configured\n",
           command_abbr_setup ? "✓" : "✗");
    if (command_abbr_setup) tests_passed++;

    // Test 4: Filename completion
    bool filename_completion = true;  // Would check if filenames completed
    printf("%s Filename completion practiced\n",
           filename_completion ? "✓" : "✗");
    if (filename_completion) tests_passed++;

    // Test 5: Workflow integration
    bool workflow_practiced = true;  // Placeholder
    printf("%s Autocomplete + abbreviations workflow\n",
           workflow_practiced ? "✓" : "✗");
    if (workflow_practiced) tests_passed++;

    // Test 6: Expansion control
    bool expansion_control = true;  // Placeholder
    printf("%s Expansion control mastered\n",
           expansion_control ? "✓" : "✗");
    if (expansion_control) tests_passed++;

    printf("\nResults: %d/%d tests passed\n", tests_passed, total_tests);

    if (tests_passed == total_tests) {
        printf("✓ All tests passed! You've mastered autocomplete and abbreviations!\n");
    } else {
        printf("✗ %d tests remaining. Keep practicing!\n", total_tests - tests_passed);
    }
}

int main() {
    printf("=== Vim Challenge Day 20: Autocomplete & Abbreviations ===\n");

    // Demonstrate the workflow
    demonstrate_workflow();

    // Test abbreviation understanding
    test_abbreviations();

    // Verify learning
    run_tests();

    printf("\n=== Practice Instructions ===\n");
    printf("1. Set up abbreviations: :iab teh the, :iab pr printf\n");
    printf("2. Practice autocomplete: Type 'init' then Ctrl-n\n");
    printf("3. Use filename completion: Type partial path + Ctrl-x Ctrl-f\n");
    printf("4. Try line completion: Ctrl-x Ctrl-l\n");
    printf("5. Set command abbreviations: :cab W w\n");
    printf("6. Use Ctrl-v to prevent expansion when needed\n");

    return 0;
}