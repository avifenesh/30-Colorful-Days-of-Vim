/*
Welcome to Day 13 of your Vim challenge!

Today, we'll learn about working with windows and splits.

New commands for today:
    - `:split`: Split the current window horizontally.
    - `:vsplit`: Split the current window vertically.
    - `Ctrl-w w`: Move to the next window.
    - `Ctrl-w h/j/k/l`: Move to the left/down/up/right window.
    - `:close`: Close the current window.
    - `:only`: Close all other windows.

Reminder from Day 12:
    - `:g` for global commands.

Your tasks:
1.  Split the window horizontally and open `AnotherFile.java` in the new window.
2.  Copy the content of `AnotherFile.java` to `Main.java` below the comment "// TASK 1".
3.  Close `AnotherFile.java`.
*/

public class Main {
    public static void main(String[] args) {
        System.out.println("Vim challenge Day 13!");
        // TASK 1: Paste content from AnotherFile.java here.
        public class AnotherFile {
            public static void main(String[] args) {
                System.out.println("This is content from another file.");
            }
        }
    }
}
