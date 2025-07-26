/*
Welcome to Day 13 of your Vim challenge!

WINDOW MANAGEMENT - Split your workspace!
Today's focus: Working with multiple windows for efficient editing

New commands for today:
    - `:split` (or `:sp`) - Split window horizontally
    - `:vsplit` (or `:vsp`) - Split window vertically
    - `Ctrl-w w` - Cycle through windows
    - `Ctrl-w h/j/k/l` - Navigate to window left/down/up/right
    - `Ctrl-w H/J/K/L` - Move current window to far left/bottom/top/right
    - `Ctrl-w =` - Make all windows equal size
    - `Ctrl-w _` - Maximize height of current window
    - `Ctrl-w |` - Maximize width of current window
    - `Ctrl-w +/-` - Increase/decrease window height
    - `Ctrl-w >/<` - Increase/decrease window width
    - `:close` (or `Ctrl-w c`) - Close current window
    - `:only` (or `Ctrl-w o`) - Close all other windows

REMINDERS - Keys from previous days:
    Day 12: Global commands - `:g/pattern/d`, `:g/pattern/m$`
    Day 11: Marks - `ma` (set mark a), `'a` (jump to line)
    Day 10: Visual mode practice
    Day 9: Text objects - `iw`, `aw`, `i"`, `a"`
    Day 8: Macros - `qa`, `@a`
    Day 7: Replace - `:%s/old/new/g`
    Day 6: Visual mode - `v`, `V`, `Ctrl-v`
    Day 5: Search - `/pattern`, `n`, `N`
    Day 4: Counts & repeat - `.`, `3w`, `2dd`
    Day 3: Yank/paste - `yy`, `p`, `P` (use between windows!)
    Day 2: Delete/change - `dw`, `cw`
    Day 1: Movement - `w`, `b`, `e`, `0`, `$`

Your tasks for Day 13:
1. Below you'll find a helper class that needs to be moved to the top of the file
2. The main method is missing proper error handling - add try-catch blocks
3. The validation methods need to be reorganized - group them together
4. Fix the indentation issues in the processData method
5. The constants should be moved to the top of the class after the helper class

TIP: Use window splits to view different parts of this file simultaneously!
For example: `:split` then navigate to different sections in each window
*/

public class Main {
    public static void main(String[] args) {
        System.out.println("=== Vim Challenge Day 13 ===\n");
        
        // Task 2: Add try-catch block here
        String input = args.length > 0 ? args[0] : "default";
        DataProcessor processor = new DataProcessor();
        processor.processData(input);
        
        runTests();
    }
    
    // Task 3: These validation methods should be grouped together
    private static boolean validateInput(String input) {
        return input != null && !input.isEmpty();
    }
    
    private static void processData(String data) {
        // Task 4: Fix indentation issues here
    if (validateInput(data)) {
System.out.println("Processing: " + data);
        if (data.length() > MAX_LENGTH) {
    System.out.println("Data too long!");
        }
    }
    }
    
    // Task 3: This validation method should be with the other one
    private static boolean validateLength(String input) {
        return input.length() <= MAX_LENGTH;
    }
    
    // Task 5: These constants should be at the top of the class
    private static final int MAX_LENGTH = 100;
    private static final String DEFAULT_VALUE = "default";
    
    private static void runTests() {
        boolean allPassed = true;
        
        // Test 1: Check if helper class is at the top
        boolean helperAtTop = true; // Placeholder - would check actual position
        
        // Test 2: Check if try-catch exists
        boolean hasTryCatch = false; // Should be true after task completion
        
        // Test 3: Check if validation methods are grouped
        boolean methodsGrouped = false; // Should be true after task completion
        
        // Test 4: Check indentation
        boolean indentationFixed = false; // Should be true after task completion
        
        // Test 5: Check if constants are at top
        boolean constantsAtTop = false; // Should be true after task completion
        
        // Display results
        System.out.println(hasTryCatch ? "✓ Try-catch block added" : "✗ Try-catch block missing");
        System.out.println(helperAtTop ? "✓ Helper class at top" : "✗ Helper class not at top");
        System.out.println(methodsGrouped ? "✓ Validation methods grouped" : "✗ Validation methods not grouped");
        System.out.println(indentationFixed ? "✓ Indentation fixed" : "✗ Indentation needs fixing");
        System.out.println(constantsAtTop ? "✓ Constants at top" : "✗ Constants not at top");
        
        if (hasTryCatch && helperAtTop && methodsGrouped && indentationFixed && constantsAtTop) {
            System.out.println("\n✓ All tests passed!");
        } else {
            System.out.println("\n✗ Some tests failed. Keep practicing window management!");
        }
    }
}

// Task 1: This helper class should be moved to the top of the file (after the comment block)
class DataProcessor {
    public void processData(String data) {
        System.out.println("DataProcessor: " + data);
    }
}