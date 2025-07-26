/*
Welcome to Day 26 of your Vim challenge!

TAGS - Navigate codebases like a pro with ctags!
Today's focus: Using tags for intelligent code navigation

New commands for today:
    - `ctags -R .` - Generate tags file (in shell)
    - `:tag {name}` or `:ta {name}` - Jump to tag
    - `Ctrl-]` - Jump to definition of word under cursor
    - `Ctrl-t` or `:pop` - Jump back (pop tag stack)
    - `:tags` - Show tag stack
    - `:tselect {name}` or `:ts {name}` - List matching tags
    - `:tnext` or `:tn` - Next matching tag
    - `:tprevious` or `:tp` - Previous matching tag
    - `:tfirst` or `:tf` - First matching tag
    - `:tlast` or `:tl` - Last matching tag
    - `g]` - List tags for word under cursor
    - `g Ctrl-]` - Jump to tag, show list if multiple
    - `:ptag {name}` - Preview tag in split
    - `Ctrl-w ]` - Split window and jump to tag
    - `Ctrl-w }` - Preview tag in preview window
    - `:set tags=./tags,tags` - Configure tag file locations
    - `:tag /{pattern}` - Search for tag by pattern
    - `:tag /^get` - Tags starting with "get"
    - `:stag {name}` - Split and jump to tag
    - `:set tagstack` - Enable tag stack (default on)

Tag file formats:
    - ctags: Universal ctags (recommended)
    - etags: Emacs tags
    - cscope: More powerful, includes references
    - Language servers: Modern alternative

Advanced tag usage:
    - `:ltag {name}` - Use location list for tags
    - `:tags` - View your tag navigation history
    - `Ctrl-w z` - Close preview window
    - `:set previewheight=20` - Preview window size
    - Tag regex: `/^function_name$` for exact match

REMINDERS - Keys from previous days:
    Day 25: Jump list - `Ctrl-o`, `Ctrl-i` (tags create jumps!)
    Day 24: Sessions - Tag stack saved in session
    Day 23: Undo tree - Different from tag history
    Day 22: Location list - `:ltag` uses location list
    Day 21: Quickfix - Similar navigation to tags
    Day 20: Argument list - Different navigation method
    Day 19: Custom commands - Create tag shortcuts
    Day 18: Autocommands - Auto-generate tags
    Day 17: Registers - Not related to tags
    Day 16: Folding - Works well with tag preview
    Day 15: Command history - Find tag commands
    Day 14: Autocomplete - `Ctrl-x Ctrl-]` for tag completion
    Day 13: Windows - Tag preview windows
    Day 12: Global commands - Process tag files
    Day 11: Marks - Mark before tag jump
    Day 10: Visual mode - Select and jump to tag
    Day 9: Text objects - Select function names
    Day 8: Macros - Record tag navigation
    Day 7: Search - `*` similar to tag jump
    Day 6: Visual mode basics
    Day 5: Search patterns in tags
    Day 4: Repeat tag jumps
    Day 3: Yank tag names
    Day 2: Change/delete in definitions
    Day 1: Movement to function names

Your tasks for Day 26:
1. Generate a tags file for this C project
2. Navigate between function definitions and calls
3. Use tag stack to track your navigation path
4. Preview tags without leaving current position
5. Handle multiple tag matches effectively

Scenario: You're exploring a new codebase and need to understand
how functions relate to each other.
*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

// Task 1: Create a codebase worth navigating with tags

// Data structures
typedef struct {
    int id;
    char name[50];
    float value;
} DataItem;

typedef struct Node {
    DataItem data;
    struct Node* next;
} Node;

// Function declarations (tags will index these)
void initialize_system(void);
DataItem* create_item(int id, const char* name, float value);
Node* create_node(DataItem item);
void insert_node(Node** head, Node* new_node);
Node* find_node(Node* head, int id);
void update_node_value(Node* node, float new_value);
void delete_node(Node** head, int id);
void print_list(Node* head);
void cleanup_list(Node** head);
int validate_data(DataItem* item);
void process_data(DataItem* item);
void generate_report(Node* head);
void handle_error(const char* message);

// Global variables (tags will find these too)
static Node* g_data_list = NULL;
static int g_error_count = 0;
static const float MAX_VALUE = 1000.0f;

// Task 2: Main entry point
int main() {
    printf("=== Vim Challenge Day 26 ===\n\n");
    
    // Initialize the system
    initialize_system();
    
    // Create test data
    // Use Ctrl-] on create_item to jump to its definition
    DataItem* item1 = create_item(1, "Alpha", 10.5f);
    DataItem* item2 = create_item(2, "Beta", 20.7f);
    DataItem* item3 = create_item(3, "Gamma", 30.9f);
    
    // Build linked list
    // Try g] on insert_node to see multiple definitions
    if (item1) insert_node(&g_data_list, create_node(*item1));
    if (item2) insert_node(&g_data_list, create_node(*item2));
    if (item3) insert_node(&g_data_list, create_node(*item3));
    
    // Process the data
    print_list(g_data_list);
    generate_report(g_data_list);
    
    // Cleanup
    cleanup_list(&g_data_list);
    
    // Free items
    free(item1);
    free(item2);
    free(item3);
    
    verify_tags();
    return 0;
}

// Task 3: Function implementations
void initialize_system(void) {
    // Jump here with :tag initialize_system
    printf("Initializing system...\n");
    g_data_list = NULL;
    g_error_count = 0;
}

DataItem* create_item(int id, const char* name, float value) {
    // Tags make finding this function instant
    DataItem* item = malloc(sizeof(DataItem));
    if (!item) {
        handle_error("Memory allocation failed");
        return NULL;
    }
    
    item->id = id;
    strncpy(item->name, name, sizeof(item->name) - 1);
    item->name[sizeof(item->name) - 1] = '\0';
    item->value = value;
    
    if (!validate_data(item)) {
        free(item);
        return NULL;
    }
    
    return item;
}

Node* create_node(DataItem item) {
    // Use Ctrl-t to jump back after exploring
    Node* node = malloc(sizeof(Node));
    if (!node) {
        handle_error("Node allocation failed");
        return NULL;
    }
    
    node->data = item;
    node->next = NULL;
    return node;
}

void insert_node(Node** head, Node* new_node) {
    // Multiple functions might have similar names
    if (!new_node) return;
    
    if (!*head) {
        *head = new_node;
    } else {
        Node* current = *head;
        while (current->next) {
            current = current->next;
        }
        current->next = new_node;
    }
}

Node* find_node(Node* head, int id) {
    // Search functionality - jump here to understand
    Node* current = head;
    while (current) {
        if (current->data.id == id) {
            return current;
        }
        current = current->next;
    }
    return NULL;
}

void update_node_value(Node* node, float new_value) {
    // Modify node data
    if (node && new_value <= MAX_VALUE) {
        node->data.value = new_value;
        process_data(&node->data);
    }
}

void delete_node(Node** head, int id) {
    // Complex function worth exploring with tags
    if (!head || !*head) return;
    
    Node* current = *head;
    Node* prev = NULL;
    
    while (current && current->data.id != id) {
        prev = current;
        current = current->next;
    }
    
    if (current) {
        if (prev) {
            prev->next = current->next;
        } else {
            *head = current->next;
        }
        free(current);
    }
}

void print_list(Node* head) {
    // Display all nodes
    printf("\nData List:\n");
    Node* current = head;
    while (current) {
        printf("  ID: %d, Name: %s, Value: %.2f\n",
               current->data.id,
               current->data.name,
               current->data.value);
        current = current->next;
    }
}

void cleanup_list(Node** head) {
    // Free all nodes
    while (*head) {
        Node* temp = *head;
        *head = (*head)->next;
        free(temp);
    }
}

int validate_data(DataItem* item) {
    // Validation logic
    if (!item) return 0;
    if (item->id <= 0) {
        handle_error("Invalid ID");
        return 0;
    }
    if (item->value < 0 || item->value > MAX_VALUE) {
        handle_error("Value out of range");
        return 0;
    }
    return 1;
}

void process_data(DataItem* item) {
    // Process individual items
    if (!item) return;
    
    // Simulate processing
    printf("Processing: %s (%.2f)\n", item->name, item->value);
}

void generate_report(Node* head) {
    // Task 4: Generate summary report
    printf("\nGenerating Report...\n");
    int count = 0;
    float sum = 0.0f;
    
    Node* current = head;
    while (current) {
        count++;
        sum += current->data.value;
        current = current->next;
    }
    
    printf("Total items: %d\n", count);
    printf("Sum of values: %.2f\n", sum);
    if (count > 0) {
        printf("Average value: %.2f\n", sum / count);
    }
    printf("Errors encountered: %d\n", g_error_count);
}

void handle_error(const char* message) {
    // Task 5: Error handling
    g_error_count++;
    fprintf(stderr, "ERROR: %s\n", message);
}

// Verification function
void verify_tags(void) {
    printf("\nTag Navigation Tests:\n");
    int passed = 0;
    int total = 5;
    
    // Test 1: Tags file generated
    int tags_generated = 0; // Would check for tags file
    printf("%s Tags file generated\n", tags_generated ? "✓" : "✗");
    if (tags_generated) passed++;
    
    // Test 2: Function navigation
    int function_navigation = 0; // Would verify Ctrl-] usage
    printf("%s Navigate between functions\n", function_navigation ? "✓" : "✗");
    if (function_navigation) passed++;
    
    // Test 3: Tag stack used
    int tag_stack = 0; // Would check Ctrl-t usage
    printf("%s Tag stack navigation\n", tag_stack ? "✓" : "✗");
    if (tag_stack) passed++;
    
    // Test 4: Preview used
    int preview_tags = 1; // Placeholder
    printf("%s Preview tags explored\n", preview_tags ? "✓" : "✗");
    if (preview_tags) passed++;
    
    // Test 5: Multiple matches
    int multiple_matches = 1; // Placeholder
    printf("%s Multiple tag matches handled\n", multiple_matches ? "✓" : "✗");
    if (multiple_matches) passed++;
    
    if (passed == total) {
        printf("\n✓ All tests passed!\n");
    } else {
        printf("\n✗ %d tests failed. Keep tagging!\n", total - passed);
    }
}