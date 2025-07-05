/*
Welcome to Day 26 of your Vim challenge!

Today, we'll learn about the tag stack.

New concepts for today:
    - `:tag <tagname>`: Jump to a tag definition.
    - `Ctrl-]`: Jump to the definition of the word under the cursor.
    - `Ctrl-t`: Jump back from a tag definition.
    - `:tags`: Show the tag stack.

Reminder from Day 25:
    - Jump list (`Ctrl-o`, `Ctrl-i`).

Your tasks:
1.  Generate a tags file for this project (using `ctags`).
2.  Jump to the definition of `main`.
3.  Jump back to the previous position.
*/

#include <stdio.h>

void my_function() {
    printf("This is my function.\n");
}

int main() {
    printf("Vim challenge Day 26!\n");
    my_function();
    return 0;
}
