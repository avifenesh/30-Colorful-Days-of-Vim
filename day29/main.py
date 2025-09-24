"""
Welcome to Day 29 of your Vim challenge!

AUTOCOMMANDS - Automate your workflow with event-driven commands!
Today's focus: Using Vim's autocommands to respond to events automatically

New commands for today:
    - `:autocmd {event} {pattern} {command}` - Create an autocommand
    - `:autocmd!` - Remove all autocommands in current group
    - `:autocmd! {group}` - Remove all autocommands in specified group
    - `:augroup {name}` - Define autocommand group
    - `:augroup END` - End autocommand group definition
    - `:autocmd` - List all autocommands
    - `:autocmd {event}` - List autocommands for specific event

Common events:
    File events:
        - `BufNewFile` - Creating a new file
        - `BufRead/BufReadPost` - After reading a file
        - `BufWrite/BufWritePre` - Before/after writing file
        - `FileReadPre/Post` - Before/after reading with :read
        - `FilterReadPre/Post` - Before/after filter command

    Buffer events:
        - `BufEnter/BufLeave` - Entering/leaving buffer
        - `BufWinEnter/Leave` - Buffer shown/hidden in window
        - `BufAdd/Delete` - Adding/removing buffer from list
        - `BufHidden/Unload` - Buffer becomes hidden/unloaded

    Window events:
        - `WinEnter/WinLeave` - Entering/leaving window
        - `WinNew` - Creating new window
        - `CmdwinEnter/Leave` - Command-line window

    Insert mode events:
        - `InsertEnter/Leave` - Entering/leaving insert mode
        - `InsertChange` - Changing insert mode
        - `InsertCharPre` - Before inserting character

    Cursor events:
        - `CursorHold/CursorHoldI` - Cursor idle in normal/insert
        - `CursorMoved/CursorMovedI` - Cursor moved

    System events:
        - `VimEnter/VimLeave` - Starting/exiting Vim
        - `VimLeavePre` - Before exiting Vim
        - `SessionLoadPost` - After loading session
        - `FileType` - When filetype is set
        - `Syntax` - When syntax is set
        - `ColorScheme` - When colorscheme changes
        - `FocusGained/Lost` - Vim gains/loses focus

Pattern matching:
    - `*` - All files
    - `*.py` - Python files only
    - `*.{py,pyw}` - Python files (multiple extensions)
    - `test_*.py` - Test files only
    - `/path/to/project/*` - Files in specific directory
    - `<buffer>` - Current buffer only

Best practices:
    - Use augroups to organize related autocommands
    - Clear existing commands with autocmd! before redefining
    - Be specific with patterns to avoid unintended triggers
    - Use BufRead vs BufNewFile appropriately
    - Consider performance impact of frequent events
    - Use ++once for one-time execution

Debugging autocommands:
    - `:verbose autocmd` - Show where autocommands were defined
    - `:autocmd BufRead` - List specific event autocommands
    - `set eventignore=all` - Disable all autocommands temporarily
    - `:doautocmd BufRead` - Manually trigger autocommand

REMINDERS - Keys from previous days:
    Day 28: External commands - Can be triggered by autocommands
    Day 27: Ranges - Use in autocommand commands
    Day 26: Tags - Auto-generate on file save
    Day 25: Jump list - Autocommands don't affect
    Day 24: Sessions - Can trigger autocommands on load
    Day 23: Undo tree - Autocommand changes create undo points
    Day 22: Location list - Auto-populate from errors
    Day 21: Quickfix - Auto-open on compiler errors
    Day 20: Argument list - Process with autocommands
    Day 19: Custom commands - Called from autocommands
    Day 18: Macros (was autocommands) - Different automation
    Day 17: Registers - Store autocommand templates
    Day 16: Folding - Auto-fold on file type
    Day 15: Command history - See autocommand execution
    Day 14: Autocomplete - Triggered by autocommands
    Day 13: Windows - Auto-resize, auto-close
    Day 12: Global commands - Run in autocommands
    Day 11: Marks - Set automatically
    Day 10: Visual mode - Enhanced by autocommands
    Day 9: Text objects - Work with autocommand text
    Day 8: Macros - Record autocommand setup
    Day 7: Replace - Automated with autocommands
    Day 6: Visual mode basics
    Day 5: Search - Enhanced by autocommands
    Day 4: Repeat - Autocommands handle repetition
    Day 3: Yank/paste - Auto-format pasted content
    Day 2: Delete/change - Auto-backup before changes
    Day 1: Movement - Enhanced by autocommands

Your tasks for Day 29:
1. Create file-type specific autocommands for Python development
2. Set up automatic code formatting and cleanup on save
3. Implement template insertion for new files
4. Create project-specific autocommand groups
5. Build debugging and monitoring autocommands
6. Set up automatic backup and recovery systems
7. Create performance monitoring autocommands

Scenario: You're setting up a robust Python development environment
with automated workflows that respond to file events, ensuring
consistent formatting, automatic backups, and enhanced productivity.
"""

import os
import time
import datetime
import tempfile
import shutil

# File: main.py
# Author: Vim Student
# Created: 2024-09-24
# Description: Day 29 Autocommands Challenge - Python Development Environment

class AutocommandDemos:
    """Demonstrates various autocommand use cases."""

    def __init__(self):
        self.temp_files = []

    def cleanup(self):
        """Clean up temporary files."""
        for temp_file in self.temp_files:
            try:
                os.remove(temp_file)
            except FileNotFoundError:
                pass

# Task 1: File-type specific autocommands
# Create these autocommands for Python files:
# :augroup PythonAuto
#     :autocmd!
#     :autocmd FileType python setlocal shiftwidth=4 expandtab
#     :autocmd FileType python setlocal textwidth=79
#     :autocmd FileType python setlocal colorcolumn=80
#     :autocmd BufNewFile *.py 0r ~/.vim/templates/python.template
# :augroup END

def python_file_setup():
    """Settings that should be applied automatically to Python files."""
    settings = {
        "shiftwidth": 4,        # Should be set by FileType autocommand
        "expandtab": True,      # Should expand tabs to spaces
        "textwidth": 79,        # Should wrap at 79 characters
        "colorcolumn": 80       # Should show column guide at 80
    }

    # This function simulates what autocommands would set
    # In reality, these would be applied automatically
    return settings

# Task 2: Automatic formatting and cleanup
# Create autocommands for code cleanup:
# :augroup PythonFormat
#     :autocmd!
#     :autocmd BufWritePre *.py :%s/\s\+$//e
#     :autocmd BufWritePre *.py :%s/\n\+\%$//e
#     :autocmd BufWritePost *.py silent !python -m black %:p
# :augroup END

class CodeFormatter:
    """Handle automatic code formatting on save."""

    def __init__(self):
        self.trailing_spaces_removed = False
        self.extra_newlines_removed = False
        self.black_formatted = False

    def remove_trailing_whitespace(self, content):
        """Simulate removing trailing whitespace."""
        # This would be done by: :%s/\s\+$//e
        lines = content.split('\n')
        cleaned_lines = [line.rstrip() for line in lines]
        self.trailing_spaces_removed = True
        return '\n'.join(cleaned_lines)

    def remove_extra_newlines(self, content):
        """Simulate removing extra newlines at end."""
        # This would be done by: :%s/\n\+\%$//e
        cleaned = content.rstrip('\n') + '\n'
        self.extra_newlines_removed = True
        return cleaned

    def format_with_black(self, filename):
        """Simulate black formatting."""
        # This would be done by: :!python -m black %:p
        self.black_formatted = True
        return f"Formatted {filename} with black"

# Example of code with formatting issues (would be auto-fixed):
def function_with_issues():   # Has trailing space
    x = 1     # Multiple trailing spaces
    y = 2

    if x==y:# Missing spaces around operator
        print("equal")

    return x,y   # Trailing space



# Task 3: Template insertion for new files
# Create template autocommand:
# :autocmd BufNewFile *.py 0r ~/.vim/templates/python.template
# Template content would include:
# #!/usr/bin/env python3
# """
# Module: <filename>
# Author: <your-name>
# Created: <current-date>
# Description:
# """

class TemplateInsertion:
    """Handle automatic template insertion."""

    @staticmethod
    def generate_python_template(filename):
        """Generate Python file template."""
        template = f'''#!/usr/bin/env python3
"""
Module: {filename}
Author: Vim Student
Created: {datetime.date.today()}
Description: Python module created with autocommand template
"""

def main():
    """Main function."""
    pass

if __name__ == "__main__":
    main()
'''
        return template

    def insert_template(self, filename):
        """Simulate template insertion on new file."""
        return self.generate_python_template(filename)

# Task 4: Project-specific autocommand groups
# Create project autocommands:
# :augroup MyProject
#     :autocmd!
#     :autocmd BufEnter /path/to/project/* cd %:p:h
#     :autocmd BufRead /path/to/project/* setlocal path+=src,tests
#     :autocmd FileType python setlocal makeprg=python\ -m\ pytest
# :augroup END

class ProjectAutocommands:
    """Project-specific automation."""

    def __init__(self, project_path="/path/to/project"):
        self.project_path = project_path
        self.auto_cd_enabled = True
        self.path_configured = False
        self.makeprg_set = False

    def setup_project_environment(self, current_file):
        """Setup environment when entering project files."""
        if self.project_path in current_file:
            # Auto-cd to file directory (simulate - don't actually change)
            if self.auto_cd_enabled:
                file_dir = os.path.dirname(current_file)
                # Only change if directory exists, otherwise simulate
                if os.path.exists(file_dir):
                    os.chdir(file_dir)

            # Configure path for imports
            self.path_configured = True

            # Set make program for testing
            self.makeprg_set = True

        return {
            "auto_cd": self.auto_cd_enabled,
            "path_configured": self.path_configured,
            "makeprg_set": self.makeprg_set
        }

# Task 5: Debugging and monitoring autocommands
# Create debug autocommands:
# :augroup DebugMode
#     :autocmd!
#     :autocmd BufWritePost *.py echom "Saved: " . expand('%:t')
#     :autocmd InsertEnter * echom "Entering insert mode"
#     :autocmd CursorHold * echom "Cursor idle for " . &updatetime . "ms"
# :augroup END

class DebugMonitor:
    """Monitor and log various Vim events."""

    def __init__(self):
        self.events_logged = []

    def log_event(self, event_type, details=""):
        """Log an autocommand event."""
        timestamp = datetime.datetime.now().strftime("%H:%M:%S")
        event_entry = f"{timestamp}: {event_type} {details}"
        self.events_logged.append(event_entry)

    def on_buf_write_post(self, filename):
        """Handle BufWritePost event."""
        self.log_event("BufWritePost", f"Saved: {filename}")

    def on_insert_enter(self):
        """Handle InsertEnter event."""
        self.log_event("InsertEnter", "Entering insert mode")

    def on_cursor_hold(self, idle_time=4000):
        """Handle CursorHold event."""
        self.log_event("CursorHold", f"Cursor idle for {idle_time}ms")

# Task 6: Automatic backup and recovery
# Create backup autocommands:
# :augroup BackupSystem
#     :autocmd!
#     :autocmd BufWritePre * let &backupext = strftime(".%Y%m%d-%H%M%S~")
#     :autocmd BufWritePre * set backup
#     :autocmd BufWritePost * set nobackup
#     :autocmd SwapExists * let v:swapchoice = 'r'
# :augroup END

class BackupSystem:
    """Automatic backup and recovery system."""

    def __init__(self, backup_dir="/tmp/vim_backups"):
        self.backup_dir = backup_dir
        self.backup_enabled = False
        self.swap_recovery = False

        # Create backup directory if it doesn't exist
        os.makedirs(backup_dir, exist_ok=True)

    def create_backup(self, filename):
        """Create timestamped backup before writing."""
        if not os.path.exists(filename):
            return None

        timestamp = datetime.datetime.now().strftime(".%Y%m%d-%H%M%S~")
        backup_name = os.path.basename(filename) + timestamp
        backup_path = os.path.join(self.backup_dir, backup_name)

        try:
            shutil.copy2(filename, backup_path)
            self.backup_enabled = True
            return backup_path
        except Exception:
            return None

    def handle_swap_file(self, filename):
        """Handle swap file conflicts."""
        # Simulate choosing recovery option
        self.swap_recovery = True
        return "recover"

# Task 7: Performance monitoring
# Create performance autocommands:
# :augroup Performance
#     :autocmd!
#     :autocmd VimEnter * let g:start_time = reltime()
#     :autocmd VimLeave * echom "Session time: " . reltimestr(reltime(g:start_time))
#     :autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
# :augroup END

class PerformanceMonitor:
    """Monitor Vim performance and restore cursor position."""

    def __init__(self):
        self.start_time = time.time()
        self.cursor_restored = False
        self.session_stats = {
            "files_opened": 0,
            "files_saved": 0,
            "insert_mode_time": 0
        }

    def on_vim_enter(self):
        """Initialize performance monitoring."""
        self.start_time = time.time()

    def on_vim_leave(self):
        """Calculate and report session statistics."""
        session_time = time.time() - self.start_time
        return f"Session time: {session_time:.1f} seconds"

    def restore_cursor_position(self, last_position=None):
        """Restore cursor to last known position."""
        if last_position and last_position > 0:
            self.cursor_restored = True
            return f"Restored cursor to line {last_position}"
        return "No previous position found"

def verify_autocommand_knowledge():
    """Test understanding of autocommands."""
    results = []

    # Test 1: File-type autocommands
    python_settings = python_file_setup()
    filetype_ok = (python_settings.get("shiftwidth") == 4 and
                   python_settings.get("expandtab") == True)
    results.append(("Python file-type autocommands", filetype_ok))

    # Test 2: Format autocommands
    formatter = CodeFormatter()
    content_with_spaces = "def func():   \n    x = 1    \n\n\n"
    cleaned = formatter.remove_trailing_whitespace(content_with_spaces)
    format_ok = formatter.trailing_spaces_removed
    results.append(("Auto-formatting on save", format_ok))

    # Test 3: Template insertion
    template_system = TemplateInsertion()
    template = template_system.insert_template("new_module.py")
    template_ok = "#!/usr/bin/env python3" in template
    results.append(("Template insertion for new files", template_ok))

    # Test 4: Project autocommands
    project = ProjectAutocommands()
    project_env = project.setup_project_environment("/path/to/project/src/main.py")
    project_ok = project_env["auto_cd"] and project_env["path_configured"]
    results.append(("Project-specific autocommands", project_ok))

    # Test 5: Debug monitoring
    debug_monitor = DebugMonitor()
    debug_monitor.on_buf_write_post("test.py")
    debug_monitor.on_insert_enter()
    debug_ok = len(debug_monitor.events_logged) >= 2
    results.append(("Debug and monitoring autocommands", debug_ok))

    # Test 6: Backup system
    backup_system = BackupSystem()
    # Create temporary file for testing
    with tempfile.NamedTemporaryFile(mode='w', delete=False, suffix='.py') as f:
        f.write("test content")
        temp_filename = f.name

    backup_path = backup_system.create_backup(temp_filename)
    backup_ok = backup_path is not None and backup_system.backup_enabled
    results.append(("Automatic backup system", backup_ok))

    # Clean up temp file
    try:
        os.remove(temp_filename)
        if backup_path and os.path.exists(backup_path):
            os.remove(backup_path)
    except:
        pass

    # Test 7: Performance monitoring
    perf_monitor = PerformanceMonitor()
    perf_monitor.on_vim_enter()
    time.sleep(0.1)  # Small delay
    session_report = perf_monitor.on_vim_leave()
    cursor_report = perf_monitor.restore_cursor_position(42)
    perf_ok = "Session time:" in session_report and perf_monitor.cursor_restored
    results.append(("Performance monitoring", perf_ok))

    return results

if __name__ == "__main__":
    print("=== Vim Challenge Day 29: Autocommands ===\n")

    print("Autocommand Examples to Create:")
    print("━" * 50)
    print("File-type autocommands:")
    print("  :augroup PythonAuto")
    print("  :autocmd FileType python setlocal sw=4 et tw=79")
    print("  :augroup END")
    print()
    print("Formatting autocommands:")
    print("  :autocmd BufWritePre *.py :%s/\\s\\+$//e")
    print("  :autocmd BufWritePost *.py !black %")
    print()
    print("Template autocommands:")
    print("  :autocmd BufNewFile *.py 0r ~/.vim/templates/python.template")
    print()
    print("Project autocommands:")
    print("  :augroup MyProject")
    print("  :autocmd BufEnter /project/* cd %:p:h")
    print("  :augroup END")
    print()

    # Run verification tests
    test_results = verify_autocommand_knowledge()
    passed = 0

    print("Test Results:")
    print("━" * 50)
    for test_name, result in test_results:
        status = "✓" if result else "✗"
        print(f"{status} {test_name}")
        if result:
            passed += 1

    total = len(test_results)
    print(f"\nPassed: {passed}/{total}")

    if passed == total:
        print("✓ All autocommand concepts mastered!")
        print("\nKey autocommand patterns learned:")
        print("• File-type specific settings with FileType event")
        print("• Pre/post write processing with BufWritePre/Post")
        print("• Template insertion with BufNewFile")
        print("• Project automation with augroups")
        print("• Event monitoring and logging")
        print("• Automatic backups and recovery")
        print("• Performance tracking and cursor restoration")
    else:
        print(f"✗ {total - passed} concepts need more practice.")
        print("\nFocus on:")
        for test_name, result in test_results:
            if not result:
                print(f"• {test_name}")