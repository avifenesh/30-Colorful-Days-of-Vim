/*
Welcome to Day 21 of your Vim challenge!

Today, we'll learn about the quickfix list.

New concepts for today:
    - `:make`: Run a build command and populate the quickfix list.
    - `:copen`: Open the quickfix window.
    - `:cclose`: Close the quickfix window.
    - `:cn`: Go to the next error in the quickfix list.
    - `:cp`: Go to the previous error in the quickfix list.

Reminder from Day 20:
    - Argument list (`:args`, `:next`, `:prev`).

Your tasks:
1.  Run the `make` command (which will simulate errors).
2.  Open the quickfix list.
3.  Navigate through the errors.
*/

fn main() {
    println!("Vim challenge Day 21!");
    // Simulate an error: missing_semicolon
    let x = 5
    let y = 10;
}
