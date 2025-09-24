/*
Welcome to Day 16 of your Vim challenge!

WINDOWS - Split your workspace and work efficiently!
Today's focus: Managing multiple windows in Vim for better productivity

New commands for today:
    - `:split` or `:sp` - Split window horizontally
    - `:vsplit` or `:vsp` - Split window vertically
    - `Ctrl-w w` - Move to next window
    - `Ctrl-w h/j/k/l` - Move to window left/down/up/right
    - `Ctrl-w H/J/K/L` - Move current window to left/down/up/right
    - `Ctrl-w =` - Make all windows equal size
    - `Ctrl-w _` - Maximize current window height
    - `Ctrl-w |` - Maximize current window width
    - `Ctrl-w c` - Close current window
    - `Ctrl-w o` - Close all windows except current
    - `Ctrl-w s` - Split horizontally (same as :split)
    - `Ctrl-w v` - Split vertically (same as :vsplit)
    - `:resize N` - Resize window to N lines
    - `:vertical resize N` - Resize window to N columns

REMINDERS - Keys from previous days:
    Day 15: Buffers - `:ls`, `:b <name>`, `:bn/:bp`
    Day 14: Visual mode mastery - `gv`, `o` in visual mode
    Day 13: Registers - `"ay`, `"ap`, `"+`
    Day 12: Marks & jumps - `ma`, `'a`, `Ctrl-o/Ctrl-i`
    Day 11: Advanced text objects - `ip`, `ap`, `it`, `at`
    Day 10: Text objects intro - `iw`, `aw`, `i"`, `a"`
    Day 9: Repeat & counts - `.`, `3w`, `2dd`
    Day 8: Search & replace - `/`, `n`, `:%s//g`
    Day 7: Visual mode basics - `v`, `V`, `Ctrl-v`

Your tasks for Day 16:
1. Open multiple files in different windows using splits
2. Practice window navigation with Ctrl-w commands
3. Reorganize window layout by moving windows around
4. Resize windows to optimize your workspace
5. Use window commands to manage a multi-file editing session
6. Practice closing and opening windows efficiently
*/

console.log("=== Vim Challenge Day 16: Windows ===\n");

// Task 1: Practice splitting this file into multiple windows
// Use :split to open this file in a horizontal split
// Use :vsplit to open this file in a vertical split
console.log("Task 1: Window splitting practice");

// Configuration for our multi-window demo
const windowConfig = {
    layout: "grid",
    defaultSize: "equal",
    navigation: "ctrl-w",
    shortcuts: {
        split_horizontal: ":split",
        split_vertical: ":vsplit",
        move_next: "Ctrl-w w",
        move_directions: "Ctrl-w h/j/k/l",
        equalize: "Ctrl-w =",
        maximize_height: "Ctrl-w _",
        maximize_width: "Ctrl-w |"
    }
};

// Task 2: Window navigation functions
// Navigate between these functions using window commands
function windowNavigationDemo() {
    console.log("Practicing window navigation:");
    console.log("- Use Ctrl-w w to cycle through windows");
    console.log("- Use Ctrl-w h/j/k/l for directional movement");
    console.log("- Practice moving between different window splits");

    return {
        tip: "Keep your hands on home row - Ctrl-w combos are fast!",
        practice: "Split this file multiple ways and navigate between them"
    };
}

// Task 3: Window layout management
function windowLayoutManager() {
    console.log("Window layout management:");
    console.log("- Use Ctrl-w = to make all windows equal size");
    console.log("- Use Ctrl-w _ to maximize current window height");
    console.log("- Use Ctrl-w | to maximize current window width");

    const layouts = [
        { name: "equal", command: "Ctrl-w =" },
        { name: "maximize_height", command: "Ctrl-w _" },
        { name: "maximize_width", command: "Ctrl-w |" }
    ];

    return layouts;
}

// Task 4: Window positioning
function windowPositioning() {
    console.log("Moving windows around:");
    console.log("- Use Ctrl-w H to move window to far left");
    console.log("- Use Ctrl-w J to move window to bottom");
    console.log("- Use Ctrl-w K to move window to top");
    console.log("- Use Ctrl-w L to move window to far right");

    const positions = {
        left: "Ctrl-w H",
        bottom: "Ctrl-w J",
        top: "Ctrl-w K",
        right: "Ctrl-w L"
    };

    return positions;
}

// Task 5: Multi-file editing simulation
class MultiFileEditor {
    constructor() {
        this.files = [
            "main.js",
            "config.js",
            "utils.js",
            "tests.js"
        ];
        this.currentWindow = 0;
    }

    // Simulate opening files in different windows
    openInNewWindow(filename) {
        console.log(`Opening ${filename} in new window`);
        console.log("Commands to try:");
        console.log("- :split " + filename);
        console.log("- :vsplit " + filename);
        console.log("- Navigate with Ctrl-w w");

        return `${filename} opened in window ${++this.currentWindow}`;
    }

    // Task 6: Window closing practice
    closeWindow(windowId) {
        console.log(`Closing window ${windowId}`);
        console.log("Window close commands:");
        console.log("- Ctrl-w c to close current window");
        console.log("- Ctrl-w o to close all except current");
        console.log("- :close or :q to close current window");

        return `Window ${windowId} closed`;
    }

    // Demonstrate window workflow
    demonstrateWorkflow() {
        console.log("\nWindow workflow demonstration:");
        console.log("1. :vsplit to create vertical split");
        console.log("2. :split to create horizontal split in right pane");
        console.log("3. Use Ctrl-w navigation to move around");
        console.log("4. Use Ctrl-w = to balance window sizes");
        console.log("5. Use Ctrl-w H/J/K/L to rearrange layout");

        return "Workflow complete!";
    }
}

// Task completion tracking
class WindowTasks {
    constructor() {
        this.tasks = [
            "Split windows horizontally and vertically",
            "Navigate between windows with Ctrl-w commands",
            "Move windows to different positions",
            "Resize and balance window layouts",
            "Practice multi-file window management",
            "Master window closing techniques"
        ];
        this.completed = [];
    }

    completeTask(taskIndex) {
        if (taskIndex < this.tasks.length) {
            this.completed.push(this.tasks[taskIndex]);
            console.log(`✓ Completed: ${this.tasks[taskIndex]}`);
        }
    }

    showProgress() {
        console.log(`\nProgress: ${this.completed.length}/${this.tasks.length} tasks completed`);
        if (this.completed.length === this.tasks.length) {
            console.log("🎉 All window management tasks completed!");
            console.log("You're now ready for advanced multi-window workflows!");
        }
    }
}

// Run the window management demo
function runWindowDemo() {
    console.log("\n=== Window Management Demo ===");

    // Initialize our demo
    const editor = new MultiFileEditor();
    const tasks = new WindowTasks();

    // Demonstrate each task
    console.log("\n1. Window Navigation:");
    windowNavigationDemo();
    tasks.completeTask(1);

    console.log("\n2. Layout Management:");
    windowLayoutManager();
    tasks.completeTask(3);

    console.log("\n3. Window Positioning:");
    windowPositioning();
    tasks.completeTask(2);

    console.log("\n4. Multi-file Workflow:");
    editor.demonstrateWorkflow();
    tasks.completeTask(4);

    // Show final progress
    tasks.showProgress();

    console.log("\n=== Practice Instructions ===");
    console.log("1. Open this file with: vim main.js");
    console.log("2. Try :vsplit to create a vertical split");
    console.log("3. Try :split in the right pane for horizontal split");
    console.log("4. Practice Ctrl-w navigation between windows");
    console.log("5. Use Ctrl-w = to balance, then Ctrl-w _ to maximize");
    console.log("6. Try Ctrl-w H/J/K/L to move windows around");
    console.log("7. Use Ctrl-w c and Ctrl-w o to close windows");

    return "Window management practice complete!";
}

// Run the demo
runWindowDemo();