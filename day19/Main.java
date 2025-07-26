/*
Welcome to Day 19 of your Vim challenge!

CUSTOM COMMANDS - Create your own Vim commands!
Today's focus: Defining custom commands to streamline your workflow

New commands for today:
    - `:command {name} {replacement}` - Define a simple command
    - `:command!` - Force define (overwrite existing)
    - `:delcommand {name}` - Delete a custom command
    - `:command` - List all custom commands
    - Command attributes:
        - `-nargs=0` - No arguments (default)
        - `-nargs=1` - Exactly one argument
        - `-nargs=*` - Any number of arguments
        - `-nargs=+` - One or more arguments
        - `-nargs=?` - Zero or one argument
        - `-range` - Accept a range
        - `-count` - Accept a count
        - `-bang` - Accept ! modifier
        - `-bar` - Command can be followed by "|"
        - `-buffer` - Buffer-local command
    - Special variables:
        - `<args>` - All arguments as string
        - `<q-args>` - Arguments with special chars quoted
        - `<f-args>` - Arguments for function call
        - `<line1>`, `<line2>` - Range start/end
        - `<count>` - Count given
        - `<bang>` - "!" if bang given, "" otherwise

REMINDERS - Keys from previous days:
    Day 18: Autocommands - `:autocmd`
    Day 17: Registers - `"ay`, `"ap`, `"_d`
    Day 16: Folding - `zfap`, `za`, `zc`/`zo`
    Day 15: Command history - `q:`
    Day 14: Autocomplete - `Ctrl-n`, `Ctrl-p`
    Day 13: Windows - `:split`, `:vsplit`
    Day 12: Global commands - `:g/pattern/command`
    Day 11: Marks - `ma`, `'a`
    Day 10: Visual mode practice
    Day 9: Text objects - `iw`, `aw`
    Day 8: Macros - `qa`, `@a`
    Day 7: Replace - `:%s/old/new/g`
    Day 6: Visual mode - `v`, `V`, `Ctrl-v`
    Day 5: Search - `/pattern`, `n`, `N`
    Day 4: Repeat - `.`, `3w`, `2dd`
    Day 3: Yank/paste - `yy`, `p`, `P`
    Day 2: Delete/change - `dw`, `cw`
    Day 1: Movement - `w`, `b`, `e`, `0`, `$`

Your tasks for Day 19:
1. Create a command to clean up Java code formatting
2. Create a command to add method documentation
3. Create a command to extract constants from magic numbers
4. Create a command to toggle between test and implementation files
5. Create a command to run current file with different arguments

Example commands to create:
    :command! CleanJava :%s/\s\+$//e | :%s/\t/    /g
    :command -nargs=1 Extract :s/<args>/CONSTANT_NAME/g
    :command! -range Comment :<line1>,<line2>s/^/\/\/ /
*/

public class Main {
    public static void main(String[] args) {
        System.out.println("=== Vim Challenge Day 19 ===\n");
        
        // Task 1: Clean up formatting issues
        String message = "Hello World!   " ;    // Extra spaces and before semicolon
        if(message!=null){      // Should have spaces around operators
            System.out.println(message)  ;   // Inconsistent spacing
        }
        
        // Task 2: Methods below need JavaDoc documentation
        
        // Task 3: Extract these magic numbers to constants
        int timeout = 5000;  // Should be TIMEOUT_MS
        int maxRetries = 3;  // Should be MAX_RETRIES
        double taxRate = 0.08;  // Should be TAX_RATE
        
        // Task 4: Toggle between Main.java and MainTest.java
        // Command should switch to test file or create one
        
        // Task 5: Run with different arguments
        // Command should execute: java Main arg1 arg2
        
        runTests();
    }
    
    // Task 2: Add JavaDoc to these methods
    public static void processData(String input) {
        // Method needs documentation
        System.out.println("Processing: " + input);
    }
    
    public static int calculate(int a, int b) {
        // Another method needing docs
        return a + b;
    }
    
    private static void runTests() {
        boolean allPassed = true;
        
        // Test 1: Formatting cleanup
        boolean formattingFixed = false;  // Check if spaces cleaned
        System.out.println((formattingFixed ? "✓" : "✗") + " Formatting cleanup command");
        
        // Test 2: Documentation added
        boolean docsAdded = false;  // Check if JavaDoc added
        System.out.println((docsAdded ? "✓" : "✗") + " Documentation command");
        
        // Test 3: Constants extracted
        boolean constantsExtracted = false;  // Check if magic numbers replaced
        System.out.println((constantsExtracted ? "✓" : "✗") + " Extract constants command");
        
        // Test 4: File toggle command
        boolean toggleCommand = true;  // Placeholder
        System.out.println((toggleCommand ? "✓" : "✗") + " Test/implementation toggle");
        
        // Test 5: Run command
        boolean runCommand = true;  // Placeholder
        System.out.println((runCommand ? "✓" : "✗") + " Run with arguments command");
        
        if (formattingFixed && docsAdded && constantsExtracted && toggleCommand && runCommand) {
            System.out.println("\n✓ All tests passed!");
        } else {
            System.out.println("\n✗ Some tests failed. Keep practicing custom commands!");
        }
    }
}