/*
Welcome to Day 19 of your Vim challenge!

Today, we'll learn about custom commands.

New concepts for today:
    - `:command MyCommand echo "Hello from MyCommand!"`: Define a custom command.
    - `:MyCommand`: Execute the custom command.
    - `:command -nargs=1 MyEcho echo "You typed: <args>"`: Define a command with arguments.

Reminder from Day 18:
    - Auto-commands (`:autocmd`).

Your tasks:
1.  Define a custom command `:Greet` that prints "Hello, Vim user!".
2.  Define a custom command `:AddNumbers` that takes two arguments and prints their sum.
    (e.g., `:AddNumbers 5 10` should print `15`)

(Note: These tasks involve configuring Vim, not changing the file content. The test will check for the presence of these commands in your nvim config if you were to put them there, but for this exercise, just demonstrate you know how to use them in the command line.)
*/

public class Main {
    public static void main(String[] args) {
        System.out.println("Vim challenge Day 19!");
    }
}
