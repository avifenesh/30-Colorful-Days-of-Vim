/*
Welcome to Day 22 of your Vim challenge!

Today, we'll learn about the location list.

New concepts for today:
    - `:lvim`: Populate the location list with errors from a specific file.
    - `:lopen`: Open the location window.
    - `:lclose`: Close the location window.
    - `:lnext`: Go to the next error in the location list.
    - `:lprev`: Go to the previous error in the location list.

Reminder from Day 21:
    - Quickfix list (`:make`, `:copen`).

Your tasks:
1.  Populate the location list with errors from `lesson.js` (simulated).
2.  Open the location list.
3.  Navigate through the errors.
*/

// Simulate an error: missing_semicolon
const x = 5
const y = 10;

console.log("Vim challenge Day 22!");
