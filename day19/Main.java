/*
Welcome to Day 19 of your Vim challenge!

FOLDING - Organize your code by hiding complexity!
Today's focus: Using Vim's folding features to manage large Java files

New commands for today:
    - `zf{motion}` - Create a fold (e.g., `zfap` for paragraph, `zf5j` for 5 lines)
    - `za` - Toggle fold (open/close)
    - `zo` - Open fold
    - `zc` - Close fold
    - `zO` - Open fold recursively
    - `zC` - Close fold recursively
    - `zd` - Delete fold
    - `zE` - Delete all folds
    - `zR` - Open all folds
    - `zM` - Close all folds
    - `zr` - Reduce folding level by one
    - `zm` - More folding level by one
    - `zj` - Move to next fold
    - `zk` - Move to previous fold
    - `:set foldmethod=manual/indent/syntax/marker`
    - `zfal` - Fold a loop
    - `zfac` - Fold a class

REMINDERS - Keys from previous days:
    Day 18: Macros - `qa`, `@a`, `@@`
    Day 17: Tabs - `:tabnew`, `gt`, `gT`
    Day 16: Windows - `:split`, `:vsplit`, `Ctrl-w w`
    Day 15: Buffers - `:ls`, `:b <name>`, `:bn/:bp`
    Day 14: Visual mode mastery - `gv`, `o` in visual mode
    Day 13: Registers - `"ay`, `"ap`, `"+y`
    Day 12: Marks & jumps - `ma`, `'a`, `Ctrl-o/Ctrl-i`
    Day 11: Advanced text objects - `ip`, `ap`, `it`, `at`

Your tasks for Day 19:
1. Create folds for each major method using zf commands
2. Add fold markers to organize class sections
3. Create folds for the entire inner class definitions
4. Practice navigating between folds using zj and zk
5. Use zM to close all folds, then selectively open needed ones
6. Use different fold methods (manual, indent, marker) to organize code
*/

// {{{1 Package and imports section
import java.util.*;
import java.io.*;
import java.time.*;
// }}}1

public class Main {
    // {{{2 Class constants section
    private static final int MAX_USERS = 100;
    private static final String DEFAULT_CONFIG = "config.properties";
    private static final double TAX_RATE = 0.08;
    // }}}2

    public static void main(String[] args) {
        System.out.println("=== Vim Challenge Day 19: Folding ===\n");

        // Task 1: Create folds for each method section
        DataProcessor processor = new DataProcessor();
        ConfigurationManager config = new ConfigurationManager();
        TestRunner tests = new TestRunner();

        // Demonstrate folding capabilities
        processor.processUserData();
        config.loadConfiguration();
        tests.runAllTests();
    }

    // Task 1: Create a fold for this utility section {{{
    // Utility Methods Section
    public static void validateInput(String input) {
        if (input == null || input.trim().isEmpty()) {
            throw new IllegalArgumentException("Input cannot be null or empty");
        }
        System.out.println("Input validated: " + input);
    }

    public static String formatOutput(String data) {
        return data.trim().toUpperCase();
    }

    public static void logMessage(String message) {
        System.out.println("[" + LocalTime.now() + "] " + message);
    }
    // }}}

    // Task 2: Add fold markers to organize this configuration class
    // {{{ Configuration Section
    static class ConfigurationManager {
        // Database settings {{{
        private String dbHost = "localhost";
        private int dbPort = 5432;
        private String dbName = "myapp";
        private String dbUser = "admin";
        // }}}

        // Server settings {{{
        private String serverHost = "0.0.0.0";
        private int serverPort = 8080;
        private boolean sslEnabled = false;
        private int maxConnections = 100;
        // }}}

        // Logging settings {{{
        private String logLevel = "INFO";
        private String logFormat = "JSON";
        private String logDestination = "file";
        // }}}

        public void loadConfiguration() {
            logMessage("Loading configuration...");
            connectToDatabase();
            startServer();
        }

        private void connectToDatabase() {
            System.out.println("Connecting to " + dbName + " at " + dbHost + ":" + dbPort);
        }

        private void startServer() {
            System.out.println("Starting server on " + serverHost + ":" + serverPort);
        }
    }
    // }}} Configuration Section

    // Task 3: Create a fold for this entire data processing class
    // {{{ Data Processing Section
    static class DataProcessor {
        private List<String> userData;
        private Map<String, Object> processedData;

        public DataProcessor() {
            this.userData = new ArrayList<>();
            this.processedData = new HashMap<>();
        }

        // {{{ User Management Methods
        public void addUser(String username, String email) {
            if (userData.size() >= MAX_USERS) {
                throw new RuntimeException("Maximum users reached");
            }
            userData.add(username + ":" + email);
            logMessage("User added: " + username);
        }

        public void removeUser(String username) {
            userData.removeIf(user -> user.startsWith(username + ":"));
            logMessage("User removed: " + username);
        }

        public List<String> getAllUsers() {
            return new ArrayList<>(userData);
        }
        // }}}

        // {{{ Data Processing Methods
        public void processUserData() {
            logMessage("Processing user data...");

            for (String user : userData) {
                String[] parts = user.split(":");
                if (parts.length == 2) {
                    processedData.put(parts[0], validateAndProcessEmail(parts[1]));
                }
            }

            generateReport();
        }

        private String validateAndProcessEmail(String email) {
            // Email validation logic
            if (!email.contains("@")) {
                return "INVALID_EMAIL";
            }
            return email.toLowerCase();
        }

        private void generateReport() {
            System.out.println("Processing complete. Users: " + userData.size());
            System.out.println("Valid emails: " +
                processedData.values().stream()
                    .mapToLong(email -> email.equals("INVALID_EMAIL") ? 0 : 1)
                    .sum()
            );
        }
        // }}}

        // {{{ Utility Methods
        public void clearData() {
            userData.clear();
            processedData.clear();
            logMessage("Data cleared");
        }

        public void exportData(String filename) {
            try {
                // Simulate file export
                System.out.println("Exporting data to: " + filename);
                Thread.sleep(1000); // Simulate processing time
                System.out.println("Export completed");
            } catch (InterruptedException e) {
                System.err.println("Export interrupted");
            }
        }
        // }}}
    }
    // }}} Data Processing Section

    // Task 4: Create folds for test suite navigation practice
    // {{{ Test Suite Section
    static class TestRunner {
        private int testsRun = 0;
        private int testsPassed = 0;

        // {{{ Configuration Tests
        public void testConfigurationLoading() {
            testsRun++;
            System.out.println("Testing configuration loading...");

            try {
                ConfigurationManager config = new ConfigurationManager();
                config.loadConfiguration();
                testsPassed++;
                System.out.println("✓ Configuration test passed");
            } catch (Exception e) {
                System.out.println("✗ Configuration test failed: " + e.getMessage());
            }
        }

        public void testDatabaseConnection() {
            testsRun++;
            System.out.println("Testing database connection...");
            // Simulation
            testsPassed++;
            System.out.println("✓ Database connection test passed");
        }
        // }}}

        // {{{ Data Processing Tests
        public void testUserDataProcessing() {
            testsRun++;
            System.out.println("Testing user data processing...");

            try {
                DataProcessor processor = new DataProcessor();
                processor.addUser("testuser", "test@example.com");
                processor.processUserData();
                testsPassed++;
                System.out.println("✓ Data processing test passed");
            } catch (Exception e) {
                System.out.println("✗ Data processing test failed: " + e.getMessage());
            }
        }

        public void testEmailValidation() {
            testsRun++;
            System.out.println("Testing email validation...");

            DataProcessor processor = new DataProcessor();
            processor.addUser("user1", "valid@email.com");
            processor.addUser("user2", "invalidemail");
            processor.processUserData();

            testsPassed++;
            System.out.println("✓ Email validation test passed");
        }
        // }}}

        // {{{ Utility Tests
        public void testInputValidation() {
            testsRun++;
            System.out.println("Testing input validation...");

            try {
                validateInput("valid input");
                testsPassed++;
                System.out.println("✓ Input validation test passed");
            } catch (Exception e) {
                System.out.println("✗ Input validation test failed: " + e.getMessage());
            }
        }

        public void testOutputFormatting() {
            testsRun++;
            System.out.println("Testing output formatting...");

            String result = formatOutput("  test data  ");
            if ("TEST DATA".equals(result)) {
                testsPassed++;
                System.out.println("✓ Output formatting test passed");
            } else {
                System.out.println("✗ Output formatting test failed");
            }
        }
        // }}}

        public void runAllTests() {
            System.out.println("\n=== Running All Tests ===");

            // Configuration tests
            testConfigurationLoading();
            testDatabaseConnection();

            // Data processing tests
            testUserDataProcessing();
            testEmailValidation();

            // Utility tests
            testInputValidation();
            testOutputFormatting();

            // Task 5: Use zM to close all, then open selectively
            showTestResults();
        }

        private void showTestResults() {
            System.out.println("\n=== Test Results ===");
            System.out.println("Tests run: " + testsRun);
            System.out.println("Tests passed: " + testsPassed);

            if (testsPassed == testsRun) {
                System.out.println("✓ All tests passed!");
            } else {
                System.out.println("✗ " + (testsRun - testsPassed) + " tests failed.");
            }
        }
    }
    // }}} Test Suite Section

    // Task 6: Practice with different fold methods
    // This section demonstrates various folding techniques
    // Use :set foldmethod=marker to see fold markers
    // Use :set foldmethod=indent for indentation-based folding
    // Use :set foldmethod=syntax for syntax-aware folding

    // {{{ Folding Practice Instructions
    /*
     * Folding Commands Practice:
     * 1. Position cursor on a method and use zfap to fold the paragraph
     * 2. Use za to toggle folds open/closed
     * 3. Use zj and zk to navigate between folds
     * 4. Use zM to close all folds, then zR to open all
     * 5. Try different fold methods:
     *    :set foldmethod=marker (uses {{{ and }}} markers)
     *    :set foldmethod=indent (folds based on indentation)
     *    :set foldmethod=syntax (uses Java syntax for folding)
     * 6. Create manual folds with zf{motion}:
     *    zfap - fold a paragraph
     *    zf5j - fold 5 lines down
     *    zfac - fold a class (if supported by syntax)
     */
    // }}}
}