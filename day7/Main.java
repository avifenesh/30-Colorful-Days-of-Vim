/*
Welcome to Day 7 of your Vim challenge!

Today we'll learn about searching and replacing.

New keys for today:
    - `/text`: Search for "text".
    - `?text`: Search backwards for "text".
    - `n`: Go to the next match.
    - `N`: Go to the previous match.
    - `:%s/old/new/g`: Replace all occurrences of "old" with "new".
    - `:%s/old/new/gc`: Replace all occurrences of "old" with "new" with confirmation.

REMINDERS - Keys from previous days:
    Day 6: Visual mode - `v` (visual), `V` (visual line), `Ctrl-v` (visual block)
    Day 6: Indentation - `>` (indent), `<` (un-indent), `=` (auto-indent)
    Day 5: Search - `/`, `?`, `n`, `N` (already covered again today!)
    Day 4: Repeat - `.` (repeat last change), counts like `3w`, `2dd`
    Day 3: Yank/paste - `yy`, `p`, `P`

Your tasks:
1. Replace all occurrences of "bug" with "feature"
2. Replace all "FIXME" with "TODO"
3. Fix all misspelled "teh" to "the"
*/

public class Main {
    public static void main(String[] args) {
        System.out.println("=== Vim Challenge Day 7 ===\n");

        // Task 1: Replace bug with feature
        String message1 = "This is a bug in the code";
        String message2 = "Another bug was found";
        String message3 = "No more bugs please";

        // Task 2: Replace FIXME with TODO
        // FIXME: This needs attention
        // FIXME: Update this logic
        String fixmeCount = "FIXME: 2";  // Should show TODO: 2 after replacements

        // Task 3: Fix misspellings
        String text1 = "teh quick brown fox";
        String text2 = "This is teh best";
        String text3 = "Check teh documentation";

        // Tests
        boolean task1Pass = !message1.contains("bug") && message1.contains("feature") &&
                           !message2.contains("bug") && message2.contains("feature") &&
                           !message3.contains("bug") && message3.contains("feature");

        boolean task3Pass = text1.contains("the") && !text1.contains("teh") &&
                           text2.contains("the") && !text2.contains("teh") &&
                           text3.contains("the") && !text3.contains("teh");

        if (task1Pass) {
            System.out.println("✓ Task 1 passed!");
        } else {
            System.out.println("✗ Task 1 failed. Still contains 'bug' instead of 'feature'");
        }

        System.out.println("✓ Task 2: Manual check - verify FIXME comments are now TODO");

        if (task3Pass) {
            System.out.println("✓ Task 3 passed!");
        } else {
            System.out.println("✗ Task 3 failed. Still contains 'teh' instead of 'the'");
        }
    }
}
