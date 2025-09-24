/**
 * Welcome to Day 13 of your Vim challenge!
 *
 * REGISTERS - Your multi-clipboard system!
 * Today's focus: Using Vim's register system for advanced copy/paste operations
 *
 * New commands for today:
 *     - `"ay` - Yank into register 'a' (works with any letter a-z)
 *     - `"ap` - Paste from register 'a'
 *     - `"Ay` - Append to register 'a' (uppercase appends)
 *     - `"_d` - Delete to black hole register (doesn't affect other registers)
 *     - `"0p` - Paste from yank register (last yanked text)
 *     - `""p` - Paste from unnamed register (default)
 *     - `"+y` - Yank to system clipboard
 *     - `"+p` - Paste from system clipboard
 *     - `:reg` - Show all registers
 *     - `:reg a b` - Show specific registers
 *     - `Ctrl-r a` - Insert register 'a' in insert mode
 *     - Special registers:
 *         - `"0` - Last yank
 *         - `"1-"9` - Last 9 deletions
 *         - `".` - Last inserted text
 *         - `"%` - Current filename
 *         - `":` - Last command
 *         - `"/` - Last search
 *
 * REMINDERS - Keys from previous days:
 *     Day 12: Marks - `ma`, `'a`, ``` (jump to last edit)
 *     Day 11: Global commands - `:g/pattern/d`, `:v/pattern/d`
 *     Day 10: Visual mode practice - `v`, `V`, `Ctrl-v`
 *     Day 9: Text objects - `iw`, `aw`, `i"`, `a"`
 *     Day 8: Macros - `qa`, `@a` (stores in registers!)
 *     Day 7: Replace - `:%s/old/new/g`
 *     Day 6: Visual mode - `v`, `V`, `Ctrl-v`
 *     Day 5: Search - `/pattern`, `n`, `N`
 *     Day 4: Repeat - `.`, `3w`, `2dd`
 *     Day 3: Yank/paste - `yy`, `p`, `P`
 *     Day 2: Delete/change - `dw`, `cw`
 *     Day 1: Movement - `w`, `b`, `e`, `0`, `$`
 *
 * Your tasks for Day 13:
 * 1. Store different config values in named registers (a, b, c)
 * 2. Use the black hole register to delete debug comments without affecting clipboard
 * 3. Build a method by collecting parts from different sections using registers
 * 4. Use uppercase registers to append multiple error messages
 * 5. Practice number registers to recover from accidental deletions
 * 6. Collect import statements using registers for reorganization
 */

import java.util.ArrayList;
import java.util.List;
import java.util.HashMap;
import java.util.Map;

public class Main {
    // Configuration values - Task 1: Store each in a different register
    private static final String API_KEY = "sk-1234567890abcdef";  // Store in register 'a'
    private static final String DATABASE_URL = "jdbc:postgresql://localhost:5432/mydb";  // Store in register 'b'
    private static final String SECRET_TOKEN = "super-secret-token-value";  // Store in register 'c'

    // Task 2: Delete these debug comments using black hole register "_d
    // DEBUG: Starting main method
    public static void main(String[] args) {
        // DEBUG: Initializing application
        System.out.println("Starting application...");

        Main app = new Main();
        app.runTests();
    }

    // Task 3: Collect these method parts into register 'd' to build complete method
    // Method signature (collect this first):
    public String processData(String data) {
        // Method body part 1 (somewhere in the file):
        if (data == null || data.isEmpty()) {
            throw new IllegalArgumentException("Data cannot be empty");
        }

        // Method body part 2 (another location):
        String result = data.toUpperCase().trim();

        // Method body part 3 (yet another location):
        return "Processed: " + result + " (length: " + result.length() + ")";
    }

    // Task 4: Use uppercase register 'E' to collect all error messages
    private static final String ERROR_MSG_1 = "Invalid input format";
    // Some other code here...
    private static final String ERROR_MSG_2 = "Connection timeout";
    // More code...
    private static final String ERROR_MSG_3 = "Permission denied";
    // Build complete error list in register 'E' by appending each

    // Task 5: Accidentally delete this important method, then recover it
    public int calculateImportantValue() {
        /** This method should not be permanently deleted! */
        int criticalValue = 42;
        return criticalValue * 2;
    }

    // Task 6: Practice collecting and organizing imports (these are scattered)
    // import java.util.Set;        // Collect import statements
    // import java.util.HashSet;    // in register 'i' for reorganization
    // import java.io.File;         // (these would normally be at top)

    // Test methods
    private void runTests() {
        int testsPassed = 0;
        int totalTests = 6;

        // Test 1: Check if config values practice completed (manual check)
        boolean configInRegisters = true; // Mark true when registers a, b, c practiced
        System.out.println(configInRegisters ? "✓" : "✗" + " Config values stored in registers");
        if (configInRegisters) testsPassed++;

        // Test 2: Check if debug comments are removed
        // This would require reading the source file, simplified for Java
        boolean debugRemoved = true; // Check manually that DEBUG comments are gone
        System.out.println(debugRemoved ? "✓" : "✗" + " Debug comments removed with black hole register");
        if (debugRemoved) testsPassed++;

        // Test 3: Check if method is properly assembled
        try {
            String result = processData("test");
            boolean methodAssembled = result.contains("Processed: TEST") && result.contains("length:");
            System.out.println(methodAssembled ? "✓" : "✗" + " Method assembled from parts using registers");
            if (methodAssembled) testsPassed++;
        } catch (Exception e) {
            System.out.println("✗ Method assembly test failed: " + e.getMessage());
        }

        // Test 4: Check if error messages collection practiced (manual check)
        boolean errorsCollected = true; // Mark true when register E used to append
        System.out.println(errorsCollected ? "✓" : "✗" + " Error messages collected with uppercase register");
        if (errorsCollected) testsPassed++;

        // Test 5: Check recovery practice (manual check)
        try {
            int result = calculateImportantValue();
            boolean recoveryPracticed = (result == 84);
            System.out.println(recoveryPracticed ? "✓" : "✗" + " Deletion recovery practiced with number registers");
            if (recoveryPracticed) testsPassed++;
        } catch (Exception e) {
            System.out.println("✗ Recovery practice failed - method may be missing!");
        }

        // Test 6: Import organization practice (manual check)
        boolean importsOrganized = true; // Mark true when import statements collected
        System.out.println(importsOrganized ? "✓" : "✗" + " Import statements collected for organization");
        if (importsOrganized) testsPassed++;

        // Final results
        if (testsPassed == totalTests) {
            System.out.println("\n✓ All tests passed! Master of registers!");
        } else {
            System.out.println("\n✗ " + (totalTests - testsPassed) + " tests failed. Keep practicing registers!");
            System.out.println("Remember: :reg to view registers, \"ay to yank to register a, \"ap to paste from a");
        }
    }
}