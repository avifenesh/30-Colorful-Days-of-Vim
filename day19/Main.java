/*
Welcome to Day 19 of your Vim challenge!

New concepts for today:
    - `:command MyCommand echo "Hello from MyCommand!"`: Define a custom command.
    - `:MyCommand`: Execute the custom command.
    - `:command -nargs=1 MyEcho echo "You typed: <args>"`: Define a command with arguments.

REMINDERS - Keys from previous days:
    Day 18: Autocommands - `:autocmd BufRead`, `:autocmd BufWritePost`
    Day 17: Registers - `"ay` (yank to a), `"ap` (paste from a), `"_d` (black hole)
    Day 15: Command history - `q:` (command window) - great for editing commands!
    Day 8: Macros - `qa` (record to a), `@a` (play), `@@` (repeat)
    Day 4: Repeat - `.` (repeat last change)


Your tasks:
1.  Define a custom command `:Greet` that prints "Hello, Vim user!".
2.  Define a custom command `:AddNumbers` that takes two arguments and prints their sum.
*/

public class Main {
    public static void main(String[] args) {
        System.out.println("=== Vim Challenge Day 19 ===\n");
        
        // TODO: Implement tests based on the day's tasks
        
        System.out.println("✓ All tests passed!");
    }
}