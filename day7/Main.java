/*
Welcome to Day 7 of your Vim challenge!

VISUAL MODE - Select and manipulate text efficiently!

New keys for today:
    - `v`: Enter character visual mode
    - `V`: Enter line visual mode
    - `Ctrl-v`: Enter block visual mode
    - `o`: Switch cursor to other end of selection
    - `O`: Switch corner in block mode
    - `>`: Indent selection
    - `<`: Unindent selection
    - `=`: Auto-format selection
    - `~`: Toggle case of selection
    - `d`: Delete selection
    - `c`: Change selection
    - `y`: Yank selection
    - `p`: Replace selection with paste
    - `gv`: Reselect last visual selection
    - `ESC`: Exit visual mode

REMINDERS - Keys from previous days:
    Day 6: Insert mode - `i`, `a`, `I`, `A`, `o`, `O`, `Ctrl-w/u/o`
    Day 5: Character navigation - `f`, `F`, `t`, `T`, `%`, `;`, `,`
    Day 4: Yank/paste/undo - `yy`, `p`, `P`, `u`, `Ctrl-r`
    Day 3: Delete/change - `dw`, `cw`, `dd`, `cc`, `D`, `C`
    Day 2: Advanced navigation - `gg`, `G`, `Ctrl-d/u`, `H/M/L`
    Day 1: Basic movement - `w`, `b`, `e`, `0`, `$`

Your tasks:
1. Use visual mode to select and delete text
2. Use visual line mode for full-line operations
3. Use visual block mode for column editing
4. Practice indentation with visual selection
5. Use visual mode with text operations
6. Master visual mode combinations
*/

public class Main {
    public static void main(String[] args) {
        int passed = 0;
        int total = 6;

        // Run all tests
        if (task1_visual_delete().equals("Keep this part only")) {
            System.out.println("✓ Task 1: Visual mode delete successful");
            passed++;
        } else {
            System.out.println("✗ Task 1: Use v to select 'DELETE THIS' and press d");
        }

        if (task2_visual_line()) {
            System.out.println("✓ Task 2: Visual line mode successful");
            passed++;
        } else {
            System.out.println("✗ Task 2: Use V to select entire lines and delete");
        }

        if (task3_visual_block()) {
            System.out.println("✓ Task 3: Visual block mode successful");
            passed++;
        } else {
            System.out.println("✗ Task 3: Use Ctrl-v to select column and edit");
        }

        if (task4_indentation()) {
            System.out.println("✓ Task 4: Visual indentation successful");
            passed++;
        } else {
            System.out.println("✗ Task 4: Use v or V to select, then > to indent");
        }

        if (task5_visual_operations()) {
            System.out.println("✓ Task 5: Visual operations successful");
            passed++;
        } else {
            System.out.println("✗ Task 5: Practice visual mode with y, c, ~");
        }

        if (task6_advanced_visual()) {
            System.out.println("✓ Task 6: Advanced visual mode successful");
            passed++;
        } else {
            System.out.println("✗ Task 6: Use gv to reselect, o to switch ends");
        }

        System.out.println("\nDay 7 Progress: " + passed + "/" + total + " tasks completed\n");

        if (passed == total) {
            System.out.println("🎉 Excellent! You've mastered visual mode!");
            System.out.println("Visual mode is one of Vim's most powerful features for text manipulation.");
            System.exit(0);
        } else {
            System.out.println("Keep practicing! Master v, V, Ctrl-v, and visual operations");
            System.out.println("Tip: Visual mode + operators = powerful text manipulation!");
            System.exit(1);
        }
    }

    // TASK 1: Use visual mode to delete part of string
    static String task1_visual_delete() {
        // Use v to select "DELETE THIS " and delete it
        String text = "Keep this DELETE THIS part only";
        return text;
    }

    // TASK 2: Use visual line mode
    static boolean task2_visual_line() {
        // Use V to select entire lines for deletion
        String[] lines = {
            "keep this line",
            "DELETE THIS ENTIRE LINE",
            "keep this too",
            "DELETE THIS ENTIRE LINE ALSO",
            "keep this as well"
        };

        // After deletion, should have only 3 lines
        return lines.length == 3 &&
               lines[0].equals("keep this line") &&
               lines[1].equals("keep this too") &&
               lines[2].equals("keep this as well");
    }

    // TASK 3: Use visual block mode
    static boolean task3_visual_block() {
        // Use Ctrl-v to select the '#' column and replace with '//'
        String[] code = {
            "#include <stdio.h>",
            "#include <stdlib.h>",
            "#include <string.h>"
        };

        // Should become:
        String[] expected = {
            "//include <stdio.h>",
            "//include <stdlib.h>",
            "//include <string.h>"
        };

        return java.util.Arrays.equals(code, expected);
    }

    // TASK 4: Fix indentation using visual mode
    static boolean task4_indentation() {
        // Select these lines with V and indent with >
        String code =
            "if (true) {\n" +
            "System.out.println(\"Line 1\");\n" +  // Needs indent
            "System.out.println(\"Line 2\");\n" +  // Needs indent
            "System.out.println(\"Line 3\");\n" +  // Needs indent
            "}";

        String expected =
            "if (true) {\n" +
            "    System.out.println(\"Line 1\");\n" +
            "    System.out.println(\"Line 2\");\n" +
            "    System.out.println(\"Line 3\");\n" +
            "}";

        return code.equals(expected);
    }

    // TASK 5: Various visual operations
    static boolean task5_visual_operations() {
        // Task 5a: Use visual mode and ~ to toggle case
        String text1 = "make THIS lowercase";  // Should become "MAKE this LOWERCASE"

        // Task 5b: Use visual mode to yank and duplicate
        String text2 = "duplicate";  // Should become "duplicateduplicate"

        // Task 5c: Use visual mode to change text
        String text3 = "change OLD to NEW";  // Should become "change NEW to NEW"

        return text1.equals("MAKE this LOWERCASE") &&
               text2.equals("duplicateduplicate") &&
               text3.equals("change NEW to NEW");
    }

    // TASK 6: Advanced visual techniques
    static boolean task6_advanced_visual() {
        // Practice these techniques:
        // 1. Select text, ESC, then gv to reselect
        // 2. Select text, use o to jump to other end
        // 3. Visual block: select column, I to insert at beginning

        // Add "* " to beginning of each line using Ctrl-v, I
        String[] list = {
            "Item 1",
            "Item 2",
            "Item 3"
        };

        String[] expected = {
            "* Item 1",
            "* Item 2",
            "* Item 3"
        };

        return java.util.Arrays.equals(list, expected);
    }
}