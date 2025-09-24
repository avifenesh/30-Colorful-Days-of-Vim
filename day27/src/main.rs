/*
Welcome to Day 27 of your Vim challenge!

SESSIONS & VIEWS - Save and restore your Vim environment!
Today's focus: Managing sessions and views for complex projects

New commands for today:
    - `:mksession [file]` - Save current session
    - `:mksession! [file]` - Overwrite existing session
    - `:source Session.vim` - Load/restore session
    - `:mkview [file]` - Save current window view
    - `:loadview [file]` - Load saved view
    - `:set sessionoptions=` - Configure what to save
    - `:set viewoptions=` - Configure view options
    - `:wa` - Write all buffers (before session)
    - `:qa` - Quit all (after restoring)

Session components:
    - `blank` - Empty windows
    - `buffers` - Hidden and unloaded buffers
    - `curdir` - Current directory
    - `folds` - Fold settings
    - `help` - Help windows
    - `options` - Global options and mappings
    - `winpos` - Window position (GUI only)
    - `winsize` - Window sizes
    - `tabpages` - All tab pages
    - `unix` - Unix line endings (affects session file)
    - `slash` - Forward slashes in filenames

Default sessionoptions: blank,buffers,curdir,folds,help,options,tabpages,winsize

View components:
    - `cursor` - Cursor position
    - `folds` - Fold settings
    - `options` - Window-local options
    - `localoptions` - Local options
    - `slash` - Forward slashes in filenames
    - `unix` - Unix line endings

Session workflow:
    1. Open multiple files/windows/tabs
    2. `:mksession ~/project.vim`
    3. Later: `vim -S ~/project.vim`
    4. Or: `:source ~/project.vim`

View workflow:
    1. Position cursor, set folds, options
    2. `:mkview` (saves to ~/.vim/view/)
    3. Later: `:loadview`

Advanced session tips:
    - `:mksession! Session.vim` - Standard name
    - `vim -S Session.vim` - Start with session
    - `:set sessionoptions-=options` - Don't save options
    - `:set sessionoptions+=globals` - Save global vars
    - Multiple sessions per project
    - Session for different tasks/contexts

REMINDERS - Keys from previous days:
    Day 26: Tags - Sessions save tag stack
    Day 25: Jump list - Jump positions in session
    Day 24: Undo tree - Undo history not saved
    Day 23: Location list - Not saved in sessions
    Day 22: Quickfix - Not saved in sessions
    Day 21: Argument list - Saved in sessions
    Day 20: Custom commands - Option-dependent
    Day 19: Autocommands - Option-dependent
    Day 18: Registers - Not saved by default
    Day 17: Folding - Saved in sessions/views
    Day 16: Command history - Not saved
    Day 15: Autocomplete - Settings saved
    Day 14: Windows/splits - Layout saved
    Day 13: Global commands - Results not saved
    Day 12: Marks - Local marks saved
    Day 11: Visual mode - Not saved
    Day 10: Text objects - Not applicable
    Day 9: Macros - Not saved by default
    Day 8: Replace - Not applicable
    Day 7: Visual mode - Selection not saved
    Day 6: Search - Pattern saved in options
    Day 5: Repeat - Not saved
    Day 4: Yank/paste - Not saved
    Day 3: Delete - Not applicable
    Day 2: Movement - Position saved
    Day 1: Basic editing - Files saved

Your tasks for Day 27:
1. Create and restore basic sessions
2. Configure session options
3. Work with views for specific windows
4. Manage multiple project sessions
5. Understand session vs view differences

Scenario: You're working on a complex Rust project with multiple
files, splits, and tabs, and need to save your workspace setup.
*/

fn main() {
    println!("=== Vim Challenge Day 27: Sessions & Views ===\n");

    // Task 1: Basic session management
    test_session_basics();

    // Task 2: Session configuration
    test_session_options();

    // Task 3: View management
    test_view_operations();

    // Task 4: Multiple sessions
    test_multiple_sessions();

    // Task 5: Session restoration
    test_session_restoration();

    println!("\n=== Session & View Exercises ===");
    session_exercises();

    // Run verification
    verify_sessions_views();
}

// Task 1: Understanding sessions
fn test_session_basics() {
    println!("Task 1: Basic Session Management");
    println!("--------------------------------");
    println!("1. Open this file in Vim");
    println!("2. Split horizontally: :split");
    println!("3. Open another file: :e Cargo.toml");
    println!("4. Create a new tab: :tabnew");
    println!("5. Save session: :mksession basic_session.vim");
    println!("6. Quit Vim: :qa");
    println!("7. Restore: vim -S basic_session.vim");
    println!("8. Or from within Vim: :source basic_session.vim\n");

    // Session saves:
    // - All open buffers and their names
    // - Window layout and splits
    // - Tab pages
    // - Current directory
    // - Cursor positions
    // - Fold states
    // - Many options and settings

    let session_info = vec![
        "Windows and splits",
        "Tab pages",
        "Buffer list",
        "Working directory",
        "Cursor positions",
        "Fold states",
        "Options (configurable)"
    ];

    for info in &session_info {
        println!("  • Session includes: {}", info);
    }
}

// Task 2: Session options configuration
fn test_session_options() {
    println!("\nTask 2: Session Options Configuration");
    println!("------------------------------------");
    println!("Default sessionoptions: {:?}", get_default_sessionoptions());

    // Configure what gets saved in sessions
    println!("\nCommands to try:");
    println!(":set sessionoptions? - View current options");
    println!(":set sessionoptions=blank,buffers,curdir,folds,tabpages");
    println!(":set sessionoptions+=winsize - Add window sizes");
    println!(":set sessionoptions-=options - Don't save global options");
    println!(":mksession configured_session.vim");

    // Common configurations:
    let configs = vec![
        ("Minimal", "blank,buffers,curdir"),
        ("Standard", "blank,buffers,curdir,folds,tabpages,winsize"),
        ("Full", "blank,buffers,curdir,folds,help,options,tabpages,winsize"),
        ("No options", "blank,buffers,curdir,folds,tabpages,winsize")
    ];

    for (name, opts) in &configs {
        println!("  {} session: {}", name, opts);
    }
}

// Task 3: View operations
fn test_view_operations() {
    println!("\nTask 3: View Operations");
    println!("----------------------");
    println!("Views save window-specific information:");

    let view_components = vec![
        "Cursor position in window",
        "Scroll position",
        "Fold states",
        "Local window options",
        "Local marks (if in viewoptions)"
    ];

    for component in &view_components {
        println!("  • {}", component);
    }

    println!("\nView commands to practice:");
    println!("1. Position cursor at specific line");
    println!("2. Create some folds with zf");
    println!("3. Set local options like :setlocal number");
    println!("4. Save view: :mkview my_view.vim");
    println!("5. Move cursor, unfold, change options");
    println!("6. Restore: :loadview my_view.vim");
    println!("7. Auto-save: :mkview (uses ~/.vim/view/)");

    // View vs Session differences
    println!("\nKey differences:");
    println!("  Session: Multiple windows/tabs, global state");
    println!("  View: Single window, local state");
    println!("  Views are perfect for complex folded files");
}

// Task 4: Managing multiple sessions
fn test_multiple_sessions() {
    println!("\nTask 4: Multiple Sessions");
    println!("------------------------");

    let project_sessions = vec![
        ("development.vim", "Main coding setup with splits"),
        ("debugging.vim", "Debug windows and test files"),
        ("documentation.vim", "README, docs, and reference"),
        ("refactoring.vim", "Before/after comparison views"),
        ("testing.vim", "Test files and output windows")
    ];

    println!("Project session organization:");
    for (session, description) in &project_sessions {
        println!("  {}: {}", session, description);
    }

    println!("\nWorkflow commands:");
    println!("  :mksession! development.vim");
    println!("  :source debugging.vim");
    println!("  vim -S documentation.vim");
    println!("  :mksession! $(date +%Y%m%d)_backup.vim");

    // Session naming strategies
    let naming_strategies = vec![
        "Feature-based: auth.vim, api.vim, ui.vim",
        "Task-based: debug.vim, test.vim, deploy.vim",
        "Date-based: 20241201.vim, 20241202.vim",
        "Context: morning.vim, review.vim, demo.vim"
    ];

    for strategy in &naming_strategies {
        println!("  • {}", strategy);
    }
}

// Task 5: Session restoration techniques
fn test_session_restoration() {
    println!("\nTask 5: Session Restoration");
    println!("--------------------------");

    println!("Ways to restore sessions:");
    println!("  1. Command line: vim -S Session.vim");
    println!("  2. From Vim: :source Session.vim");
    println!("  3. Mapping: :nnoremap <F2> :source Session.vim<CR>");
    println!("  4. Auto-load: Add to .vimrc for project");

    println!("\nSession restoration tips:");
    println!("  • Save all files before creating session (:wa)");
    println!("  • Sessions are just Vim commands");
    println!("  • Can edit session files manually");
    println!("  • Use absolute paths for portability");
    println!("  • Test sessions before relying on them");

    // Common session issues and solutions
    let troubleshooting = vec![
        "Missing files: Use relative paths or update paths",
        "Wrong directory: Check 'autochdir' setting",
        "Lost options: Check sessionoptions setting",
        "Plugin issues: Load plugins before session",
        "Large sessions: Reduce sessionoptions"
    ];

    for issue in &troubleshooting {
        println!("  • {}", issue);
    }
}

// Practical exercises
fn session_exercises() {
    println!("=== Hands-on Exercises ===");

    let exercises = vec![
        Exercise {
            name: "Multi-file Development Session",
            steps: vec![
                "Open main.rs (this file)",
                "Split and open Cargo.toml (:sp Cargo.toml)",
                "Vertical split for test file (:vs test_file.rs)",
                "New tab for documentation (:tabnew README.md)",
                "Save as dev_session.vim (:mksession! dev_session.vim)",
                "Test by quitting and restoring"
            ]
        },
        Exercise {
            name: "View Practice",
            steps: vec![
                "Fold this function with zf (visual select first)",
                "Move cursor to middle of main()",
                "Set line numbers (:setlocal number)",
                "Save view (:mkview fold_view.vim)",
                "Unfold (zR), move cursor, turn off numbers",
                "Restore view (:loadview fold_view.vim)"
            ]
        },
        Exercise {
            name: "Session Options Experiment",
            steps: vec![
                "Check current options (:set sessionoptions?)",
                "Remove options (:set sessionoptions-=options)",
                "Create session (:mksession no_opts.vim)",
                "Change colorscheme (:colorscheme desert)",
                "Restore session and see if colors preserved",
                "Compare with full options session"
            ]
        },
        Exercise {
            name: "Project Workflow",
            steps: vec![
                "Create 'morning.vim' session with TODO list",
                "Create 'afternoon.vim' with different layout",
                "Practice switching: :source morning.vim",
                "Then: :source afternoon.vim",
                "Use :wa before switching sessions",
                "Create backup sessions with timestamps"
            ]
        }
    ];

    for (i, exercise) in exercises.iter().enumerate() {
        println!("\nExercise {}: {}", i + 1, exercise.name);
        for (j, step) in exercise.steps.iter().enumerate() {
            println!("  {}. {}", j + 1, step);
        }
    }
}

// Helper functions
fn get_default_sessionoptions() -> &'static str {
    "blank,buffers,curdir,folds,help,options,tabpages,winsize"
}

struct Exercise {
    name: &'static str,
    steps: Vec<&'static str>,
}

// Verification function
fn verify_sessions_views() {
    println!("\n=== Session & View Tests ===");
    let mut passed = 0;
    let total = 5;

    // Test 1: Basic session understanding
    let session_basics = true; // Understanding demonstrated
    println!("{} Basic session management", if session_basics { "✓" } else { "✗" });
    if session_basics { passed += 1; }

    // Test 2: Session options knowledge
    let session_options = true; // Options explained
    println!("{} Session options configuration", if session_options { "✓" } else { "✗" });
    if session_options { passed += 1; }

    // Test 3: View operations
    let view_ops = true; // View concepts covered
    println!("{} View operations", if view_ops { "✓" } else { "✗" });
    if view_ops { passed += 1; }

    // Test 4: Multiple sessions
    let multi_sessions = true; // Strategies provided
    println!("{} Multiple session management", if multi_sessions { "✓" } else { "✗" });
    if multi_sessions { passed += 1; }

    // Test 5: Restoration techniques
    let restoration = true; // Techniques covered
    println!("{} Session restoration", if restoration { "✓" } else { "✗" });
    if restoration { passed += 1; }

    if passed == total {
        println!("\n✓ All session & view concepts covered!");
        println!("You now understand how to save and restore your Vim workspace.");
        println!("Practice creating sessions for different project contexts.");
    } else {
        println!("\n✗ {} concepts need more attention.", total - passed);
        println!("Review the session and view commands above.");
    }

    println!("\nNext up: Expression register and calculations!");
}