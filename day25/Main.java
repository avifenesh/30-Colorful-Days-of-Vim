/*
Welcome to Day 25 of your Vim challenge!

JUMP LIST - Navigate your movement history like a time machine!
Today's focus: Mastering the jump list for efficient navigation

New commands for today:
    - `Ctrl-o` - Jump back (older position in jump list)
    - `Ctrl-i` or `Tab` - Jump forward (newer position in jump list)
    - `:jumps` or `:ju` - Display the jump list
    - `:clearjumps` - Clear the jump list
    - `g;` - Go to older position in change list (different!)
    - `g,` - Go to newer position in change list (different!)
    - `''` - Jump to position before last jump
    - ``` `` ``` - Jump to exact position before last jump

What creates a jump point:
    - Searches: `/pattern`, `?pattern`, `*`, `#`, `n`, `N`
    - Line jumps: `G`, `gg`, `10G`, `:25`
    - Paragraph/section: `{`, `}`, `[[`, `]]`
    - Marks: `'a`, ``` `a ```, `'A` (global)
    - Tags: `Ctrl-]`, `:tag`
    - Windows: `Ctrl-w` commands
    - Any movement > 1 line (except j/k)

What does NOT create jumps:
    - Character movements: `h`, `l`, `w`, `b`, `e`
    - Single line movements: `j`, `k`, `+`, `-`
    - Scrolling: `Ctrl-d`, `Ctrl-u`, `Ctrl-f`, `Ctrl-b`
    - Same-line searches: `fx`, `tx`, `;`, `,`

Jump list vs Change list:
    - Jump list: Records cursor positions from movements
    - Change list: Records positions where changes were made
    - Different lists for different purposes!

REMINDERS - Keys from previous days:
    Day 24: Sessions - Save jump list with session!
    Day 23: Undo tree - Navigate edit history
    Day 22: Location list - Window-local navigation
    Day 21: Quickfix - Project-wide navigation
    Day 20: Argument list - File navigation
    Day 19: Custom commands - Create jump shortcuts
    Day 18: Autocommands - Trigger on jumps
    Day 17: Registers - Not related to jumps
    Day 16: Folding - `zj`, `zk` don't create jumps
    Day 15: Command history - Find jump commands
    Day 14: Autocomplete - No jumps created
    Day 13: Windows - Creates jump points!
    Day 12: Global commands - Can create many jumps
    Day 11: Marks - Create reliable jump points
    Day 10: Visual mode - Some movements create jumps
    Day 9: Text objects - Usually no jumps
    Day 8: Macros - Jumps recorded in macros
    Day 7: Search & Replace - Creates jumps
    Day 6: Visual mode basics
    Day 5: Search - Primary jump creator!
    Day 4: Repeat - Doesn't affect jumps
    Day 3: Yank/paste - No jumps created
    Day 2: Delete/change - No jumps
    Day 1: Movement - Large movements = jumps

Your tasks for Day 25:
1. Create a series of strategic jump points throughout the code
2. Practice navigating with Ctrl-o and Ctrl-i
3. Use :jumps to understand your navigation history
4. Compare jump list with change list (g; and g,)
5. Master the difference between creating and not creating jumps

Scenario: You're debugging code and need to jump between
definitions, usage sites, and documentation quickly.
*/

public class Main {
    // Task 1: Create jump points by navigating to these locations
    private static final String VERSION = "1.0.0";
    private static final int MAX_ITEMS = 100;
    
    public static void main(String[] args) {
        System.out.println("=== Vim Challenge Day 25 ===\n");
        
        // Test different jump scenarios
        testJumpCreation();
        processData();
        validateResults();
        generateReport();
        
        // Run verification
        verifyJumpList();
    }
    
    // Task 2: Jump between method definitions
    private static void testJumpCreation() {
        System.out.println("Testing jump creation...");
        
        // Jump point 1: Search for ERROR
        // ERROR: This is intentional for search practice
        String status = "active";
        
        // Jump point 2: Go to line 50+ from here
        for (int i = 0; i < 10; i++) {
            processItem(i);
        }
    }
    
    // Task 3: Use marks as reliable jump points
    private static void processItem(int id) {
        // Mark 'a' - Set a mark here
        if (id < 0) {
            handleError("Invalid ID: " + id);
            return;
        }
        
        // Process the item
        System.out.println("Processing item: " + id);
    }
    
    // Task 4: Navigate to definition and back
    private static void processData() {
        // Jump to MAX_ITEMS definition with `gd` or `*`
        int[] data = new int[MAX_ITEMS];
        
        // Fill array with test data
        for (int i = 0; i < MAX_ITEMS; i++) {
            data[i] = i * 2;
        }
        
        // ERROR: Another search target
        analyzeData(data);
    }
    
    private static void analyzeData(int[] data) {
        // Analyze the data
        int sum = 0;
        for (int value : data) {
            sum += value;
        }
        System.out.println("Sum: " + sum);
    }
    
    // Task 5: Long method to practice paragraph jumps
    private static void validateResults() {
        System.out.println("Validating results...");
        
        // Section 1: Input validation
        // Use `{` and `}` to jump between paragraphs
        boolean inputValid = true;
        if (!inputValid) {
            handleError("Invalid input");
        }
        
        // Section 2: Data validation
        // This creates a new paragraph
        boolean dataValid = true;
        if (!dataValid) {
            handleError("Invalid data");
        }
        
        // Section 3: Output validation
        // Another paragraph for navigation
        boolean outputValid = true;
        if (!outputValid) {
            handleError("Invalid output");
        }
    }
    
    private static void handleError(String message) {
        // Mark 'e' - Error handler location
        System.err.println("ERROR: " + message);
        // TODO: Add proper error handling
    }
    
    private static void generateReport() {
        // Jump here from main() and back
        System.out.println("Generating report...");
        
        // Multi-line string for practice
        String report = "Jump List Navigation Report\n" +
                       "==========================\n" +
                       "Total jumps: Unknown\n" +
                       "Jump efficiency: To be calculated\n";
        
        System.out.println(report);
    }
    
    // Verification function
    private static void verifyJumpList() {
        int passed = 0;
        int total = 5;
        
        // Test 1: Jump points created
        boolean jumpsCreated = false; // Would check :jumps output
        System.out.println((jumpsCreated ? "✓" : "✗") + " Jump points created throughout file");
        if (jumpsCreated) passed++;
        
        // Test 2: Navigation practiced
        boolean navigationPracticed = false; // Would verify Ctrl-o/Ctrl-i usage
        System.out.println((navigationPracticed ? "✓" : "✗") + " Jump navigation with Ctrl-o/Ctrl-i");
        if (navigationPracticed) passed++;
        
        // Test 3: Jump list viewed
        boolean jumpListViewed = false; // Would check :jumps command usage
        System.out.println((jumpListViewed ? "✓" : "✗") + " Jump list viewed with :jumps");
        if (jumpListViewed) passed++;
        
        // Test 4: Jump vs change list
        boolean listsCompared = true; // Placeholder
        System.out.println((listsCompared ? "✓" : "✗") + " Jump list vs change list understood");
        if (listsCompared) passed++;
        
        // Test 5: Strategic jumping
        boolean strategicJumping = true; // Placeholder
        System.out.println((strategicJumping ? "✓" : "✗") + " Strategic jump usage mastered");
        if (strategicJumping) passed++;
        
        if (passed == total) {
            System.out.println("\n✓ All tests passed!");
        } else {
            System.out.println("\n✗ " + (total - passed) + " tests failed. Keep jumping!");
        }
    }
}