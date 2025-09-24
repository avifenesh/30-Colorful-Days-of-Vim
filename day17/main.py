"""
Welcome to Day 17 of your Vim challenge!

TABS - Organize your workspace with multiple tabs!
Today's focus: Using Vim's tab system for efficient multi-file management

New commands for today:
    - `:tabnew` or `:tabe` - Create a new tab
    - `:tabnew filename` - Open filename in new tab
    - `gt` - Go to next tab
    - `gT` - Go to previous tab
    - `3gt` - Go to tab number 3
    - `:tabclose` or `:tabc` - Close current tab
    - `:tabonly` or `:tabo` - Close all tabs except current
    - `:tabmove N` - Move current tab to position N
    - `:tabmove +1` - Move tab one position right
    - `:tabmove -1` - Move tab one position left
    - `:tabs` - List all tabs
    - `:tabfirst` - Go to first tab
    - `:tablast` - Go to last tab
    - `:tab split` - Open current buffer in new tab

REMINDERS - Keys from previous days:
    Day 16: Windows - `:split`, `:vsplit`, `Ctrl-w w`
    Day 15: Buffers - `:ls`, `:b <name>`, `:bn/:bp`
    Day 14: Visual mode mastery - `gv`, `o` in visual mode
    Day 13: Registers - `"ay`, `"ap`, `"+y`
    Day 12: Marks & jumps - `ma`, `'a`, `Ctrl-o/Ctrl-i`
    Day 11: Advanced text objects - `ip`, `ap`, `it`, `at`
    Day 10: Text objects intro - `iw`, `aw`, `i"`, `a"`
    Day 9: Repeat & counts - `.`, `3w`, `2dd`
    Day 8: Search & replace - `/`, `n`, `:%s//g`
    Day 7: Visual mode basics - `v`, `V`, `Ctrl-v`

Your tasks for Day 17:
1. Open multiple Python modules in separate tabs
2. Navigate between tabs using gt/gT and numbered shortcuts
3. Reorganize tabs by moving them to different positions
4. Practice tab management commands (close, open, move)
5. Use tabs with splits to create complex layouts
6. Master tab workflows for multi-file projects
"""

import os
import sys
import datetime

print("=== Vim Challenge Day 17: Tabs ===\n")

# Task 1: Tab organization practice
# Open each of these files in separate tabs using :tabnew
class TabManager:
    """Simulate tab management for the challenge"""

    def __init__(self):
        self.tabs = [
            {"name": "main.py", "active": True, "modified": False},
            {"name": "config.py", "active": False, "modified": True},
            {"name": "utils.py", "active": False, "modified": False},
            {"name": "tests.py", "active": False, "modified": False}
        ]
        self.current_tab = 0

    def create_new_tab(self, filename=None):
        """Simulate :tabnew command"""
        new_tab = {
            "name": filename or f"untitled_{len(self.tabs) + 1}",
            "active": False,
            "modified": False
        }
        self.tabs.append(new_tab)
        print(f"Created new tab: {new_tab['name']}")
        return len(self.tabs) - 1

    def switch_to_tab(self, tab_number):
        """Simulate gt command to switch tabs"""
        if 0 <= tab_number < len(self.tabs):
            # Deactivate current tab
            self.tabs[self.current_tab]["active"] = False
            # Activate new tab
            self.current_tab = tab_number
            self.tabs[tab_number]["active"] = True
            print(f"Switched to tab {tab_number + 1}: {self.tabs[tab_number]['name']}")
        else:
            print(f"Tab {tab_number + 1} doesn't exist")

    def next_tab(self):
        """Simulate gt command"""
        next_index = (self.current_tab + 1) % len(self.tabs)
        self.switch_to_tab(next_index)

    def previous_tab(self):
        """Simulate gT command"""
        prev_index = (self.current_tab - 1) % len(self.tabs)
        self.switch_to_tab(prev_index)

    def move_tab(self, new_position):
        """Simulate :tabmove command"""
        if 0 <= new_position < len(self.tabs):
            tab = self.tabs.pop(self.current_tab)
            self.tabs.insert(new_position, tab)
            self.current_tab = new_position
            print(f"Moved tab to position {new_position + 1}")
        else:
            print(f"Invalid position: {new_position + 1}")

    def close_current_tab(self):
        """Simulate :tabclose command"""
        if len(self.tabs) > 1:
            closed_tab = self.tabs.pop(self.current_tab)
            print(f"Closed tab: {closed_tab['name']}")
            if self.current_tab >= len(self.tabs):
                self.current_tab = len(self.tabs) - 1
            self.tabs[self.current_tab]["active"] = True
        else:
            print("Cannot close last tab")

    def list_tabs(self):
        """Simulate :tabs command"""
        print("\nTab List:")
        for i, tab in enumerate(self.tabs):
            status = ">" if tab["active"] else " "
            modified = "+" if tab["modified"] else " "
            print(f"  {status} {i + 1}{modified} {tab['name']}")

    def get_tab_info(self):
        """Get current tab information"""
        return {
            "current": self.current_tab + 1,
            "total": len(self.tabs),
            "name": self.tabs[self.current_tab]["name"]
        }

# Task 2: Navigation practice functions
def demonstrate_tab_navigation():
    """Practice tab navigation commands"""
    print("=== Tab Navigation Practice ===")
    print("Commands to practice:")
    print("- gt: Next tab")
    print("- gT: Previous tab")
    print("- 3gt: Go to tab 3")
    print("- :tabfirst: Go to first tab")
    print("- :tablast: Go to last tab")

    # Simulate navigation
    manager = TabManager()
    manager.create_new_tab("config.py")
    manager.create_new_tab("utils.py")
    manager.create_new_tab("tests.py")

    print("\nNavigating through tabs:")
    manager.list_tabs()

    # Practice navigation
    manager.next_tab()  # gt
    manager.next_tab()  # gt again
    manager.previous_tab()  # gT
    manager.switch_to_tab(0)  # 1gt (go to first)

    return manager

# Task 3: Tab reorganization
def demonstrate_tab_reorganization(manager):
    """Practice moving tabs around"""
    print("\n=== Tab Reorganization ===")
    print("Commands to practice:")
    print("- :tabmove 0: Move to first position")
    print("- :tabmove $: Move to last position")
    print("- :tabmove +1: Move one position right")
    print("- :tabmove -1: Move one position left")

    print(f"\nBefore reorganization:")
    manager.list_tabs()

    # Move current tab to different positions
    manager.move_tab(2)  # Move to position 3
    print("\nAfter moving to position 3:")
    manager.list_tabs()

    manager.move_tab(0)  # Move to first position
    print("\nAfter moving to first position:")
    manager.list_tabs()

# Task 4: Tab workflow examples
class ProjectWorkflow:
    """Demonstrate real-world tab workflows"""

    def __init__(self):
        self.project_files = [
            "main.py",
            "models.py",
            "views.py",
            "tests.py",
            "config.py",
            "utils.py"
        ]

    def setup_development_workspace(self):
        """Task 4: Set up a typical development workspace"""
        print("\n=== Development Workspace Setup ===")
        print("Setting up tabs for a typical development session:")

        manager = TabManager()

        # Open main files in tabs
        for filename in self.project_files[:4]:  # First 4 files
            manager.create_new_tab(filename)

        print("\nWorkspace tabs created:")
        manager.list_tabs()

        # Demonstrate workflow
        print("\nDemonstrating workflow:")
        print("1. Start in main.py (tab 1)")
        manager.switch_to_tab(0)

        print("2. Switch to models.py for data structures")
        manager.switch_to_tab(1)

        print("3. Open tests.py to write tests")
        manager.switch_to_tab(3)

        print("4. Back to main.py to implement")
        manager.switch_to_tab(0)

        return manager

    def demonstrate_tab_with_splits(self):
        """Task 5: Combine tabs with window splits"""
        print("\n=== Tabs + Splits Workflow ===")
        print("Advanced workflow: Tabs with splits")
        print("Commands to try:")
        print("- :tabnew config.py")
        print("- :split tests.py (split current tab)")
        print("- :vsplit utils.py (vertical split)")
        print("- Ctrl-w w (navigate between splits)")
        print("- gt/gT (switch between tabs)")
        print("\nThis gives you:")
        print("Tab 1: main.py")
        print("Tab 2: config.py + tests.py (split) + utils.py (vsplit)")
        print("Tab 3: Another configuration...")

# Task 6: Advanced tab management
def demonstrate_advanced_features():
    """Advanced tab features and shortcuts"""
    print("\n=== Advanced Tab Features ===")
    print("Advanced commands to master:")
    print("- :tab split: Open current buffer in new tab")
    print("- :tabonly: Close all tabs except current")
    print("- :tabclose: Close current tab")
    print("- :tabs: List all open tabs")

    manager = TabManager()
    manager.create_new_tab("file1.py")
    manager.create_new_tab("file2.py")
    manager.create_new_tab("file3.py")

    print(f"\nStarting with {len(manager.tabs)} tabs:")
    manager.list_tabs()

    # Close one tab
    manager.close_current_tab()
    print(f"\nAfter closing current tab:")
    manager.list_tabs()

    return manager

# Test completion tracking
class TabTasks:
    """Track completion of tab-related tasks"""

    def __init__(self):
        self.tasks = [
            "Open multiple files in separate tabs",
            "Navigate between tabs with gt/gT",
            "Move tabs to different positions",
            "Practice tab management commands",
            "Combine tabs with window splits",
            "Master advanced tab workflows"
        ]
        self.completed = []

    def complete_task(self, task_index):
        """Mark a task as completed"""
        if task_index < len(self.tasks):
            self.completed.append(self.tasks[task_index])
            print(f"✓ Task {task_index + 1} completed: {self.tasks[task_index]}")

    def show_progress(self):
        """Display current progress"""
        print(f"\n=== Progress: {len(self.completed)}/{len(self.tasks)} tasks completed ===")

        for i, task in enumerate(self.tasks):
            status = "✓" if task in self.completed else "○"
            print(f"{status} Task {i + 1}: {task}")

        if len(self.completed) == len(self.tasks):
            print("\n🎉 Congratulations! You've mastered Vim tabs!")
            print("You can now efficiently manage multiple files in tabs.")
        else:
            remaining = len(self.tasks) - len(self.completed)
            print(f"\n{remaining} tasks remaining. Keep practicing!")

# Main demonstration function
def run_tab_demo():
    """Run the complete tab demonstration"""
    print("Starting tab management demonstration...\n")

    # Initialize task tracker
    tasks = TabTasks()

    # Task 1: Basic tab creation and navigation
    manager = demonstrate_tab_navigation()
    tasks.complete_task(0)  # Multiple files in tabs
    tasks.complete_task(1)  # Navigation

    # Task 2: Tab reorganization
    demonstrate_tab_reorganization(manager)
    tasks.complete_task(2)  # Moving tabs

    # Task 3: Project workflow
    workflow = ProjectWorkflow()
    workspace_manager = workflow.setup_development_workspace()
    workflow.demonstrate_tab_with_splits()
    tasks.complete_task(3)  # Tab management
    tasks.complete_task(4)  # Tabs with splits

    # Task 4: Advanced features
    demonstrate_advanced_features()
    tasks.complete_task(5)  # Advanced workflows

    # Show final progress
    tasks.show_progress()

    print("\n=== Practice Instructions ===")
    print("1. Open this file: vim main.py")
    print("2. Create new tabs: :tabnew config.py")
    print("3. Navigate: gt (next), gT (previous), 2gt (tab 2)")
    print("4. Move tabs: :tabmove 0 (to start), :tabmove $ (to end)")
    print("5. Splits in tabs: :split in current tab")
    print("6. Close tabs: :tabclose, :tabonly")
    print("7. List tabs: :tabs")

# Run the demonstration
if __name__ == "__main__":
    run_tab_demo()