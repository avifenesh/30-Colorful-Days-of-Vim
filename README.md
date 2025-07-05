# 30-Colorful-Days-of-Vim

Welcome to the **30-Colorful-Days-of-Vim** challenge! This repository contains a structured 30-day program designed to help you become proficient in Vim (or Neovim).

Each day introduces new Vim commands and concepts, accompanied by a coding task in a different programming language (C, Rust, Node.js, Python, Lua, Java). Your goal is to complete the task using only the Vim commands learned up to that day. A test script is provided for each day to verify your solution.

## Why this challenge?

- **Structured Learning:** A clear path to mastering Vim, broken down into manageable daily lessons.
- **Hands-on Practice:** Each day includes practical coding tasks to reinforce your learning.
- **Diverse Languages:** Work with C, Rust, Node.js, Python, Lua, and Java to broaden your experience.
- **Test-Driven:** Verify your progress with automated test scripts for each daily challenge.
- **Progressive Difficulty:** Starts with fundamental movements and edits, gradually introducing more advanced features like macros, windows, and global commands.

## Getting Started

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/avifenesh/30-Colorful-Days-of-Vim.git
    cd 30-Colorful-Days-of-Vim
    ```

2.  **Navigate to a daily challenge:**
    Each day's challenge is in its own directory (e.g., `day1`, `day2`, etc.).
    ```bash
    cd day1
    ```

3.  **Open the lesson file:**
    Open the `lesson.<extension>` file (e.g., `lesson.c`, `lesson.rs`, `lesson.js`, `lesson.py`, `lesson.lua`, `Main.java`) in Neovim (or Vim).
    ```bash
    nvim lesson.c
    ```

4.  **Follow the instructions:**
    The `lesson.<extension>` file contains comments explaining the new Vim commands for the day and the tasks you need to complete.

5.  **Run the test script:**
    After you believe you've completed the tasks, save the file and run the `test.sh` script to check your work.
    ```bash
    ./test.sh
    ```
    The script will tell you if you passed or failed. Keep trying until you pass!

## Challenge Structure

Each `dayX` directory contains:

-   `lesson.<extension>`: The file you will edit, containing the lesson and tasks.
-   `solution.<extension>`: The correct solution file (for testing purposes).
-   `test.sh`: A bash script to compare your `lesson.<extension>` with `solution.<extension>`.

## Contributing

Feel free to contribute by:

-   Adding more advanced Vim challenges.
-   Improving existing lessons or tests.
-   Translating lessons into other languages.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
