"""
Welcome to Day 29 of your Vim challenge!

ABBREVIATIONS - Type less, accomplish more with smart expansions!
Today's focus: Using abbreviations to speed up your workflow

New commands for today:
    - `:ab[breviate]` - List all abbreviations
    - `:ab {lhs} {rhs}` - Abbreviation for all modes
    - `:iab[breviate] {lhs} {rhs}` - Insert mode only
    - `:cab[breviate] {lhs} {rhs}` - Command-line mode only
    - `:una[bbreviate] {lhs}` - Remove abbreviation
    - `:cabc[lear]` - Clear command abbreviations
    - `:iabc[lear]` - Clear insert abbreviations
    - `:abc[lear]` - Clear all abbreviations
    - `Ctrl-v` before abbr - Prevent expansion
    - `:ab <buffer>` - Buffer-local abbreviation
    - `:ab #i <c-r>=` - Expression abbreviation
    - `:noreabbrev` - Non-recursive abbreviation

Common abbreviation patterns:
    - Typo corrections: `:iab teh the`
    - Shortcuts: `:iab @@ user@example.com`
    - Snippets: `:iab psvm public static void main(`
    - Headers: `:iab #h #!/usr/bin/env python3`
    - Timestamps: `:iab dts <c-r>=strftime('%Y-%m-%d')<cr>`
    - Signatures: `:iab sig Best regards,<cr>Your Name`
    - URLs: `:iab ghub https://github.com/`
    - Commands: `:cab W w !sudo tee %`

Abbreviation triggers:
    - Space, Enter, or punctuation after abbreviation
    - Only whole words (not parts of words)
    - Case-sensitive by default
    - Works in insert and replace modes

Advanced techniques:
    - Multi-line: `:iab addr 123 Main St<cr>City, ST 12345`
    - Dynamic: `:iab time <c-r>=strftime('%H:%M:%S')<cr>`
    - Context: `:iab <expr> cn col('.') == 1 ? 'className' : 'cn'`
    - Filetype: `:autocmd FileType python iab pdb import pdb; pdb.set_trace()`
    - Project: Store in .vimrc or project config

Practical examples:
    - `:iab #b /**************/`
    - `:iab #e ***************/`
    - `:iab TODO TODO(username):`
    - `:iab FIXME FIXME(username):`
    - `:cab h tab help`
    - `:cab vg vimgrep`
    - `:iab lorem Lorem ipsum dolor sit amet`

REMINDERS - Keys from previous days:
    Day 28: External commands - Abbreviate long commands!
    Day 27: Ranges - Use in abbreviated commands
    Day 26: Tags - Abbreviate tag commands
    Day 25: Jump list - Abbreviations don't affect
    Day 24: Sessions - Abbreviations not saved
    Day 23: Undo tree - Can undo expansions
    Day 22: Location list - Abbreviate navigation
    Day 21: Quickfix - Abbreviate error jumps
    Day 20: Argument list - Abbreviate argdo
    Day 19: Custom commands - More powerful than abbr
    Day 18: Autocommands - Load abbreviations
    Day 17: Registers - Different from abbreviations
    Day 16: Folding - Abbreviate fold commands
    Day 15: Command history - See expanded commands
    Day 14: Autocomplete - Works alongside
    Day 13: Windows - Abbreviate window commands
    Day 12: Global commands - Abbreviate complex g//
    Day 11: Marks - Not related
    Day 10: Visual mode - Abbreviations don't work
    Day 9: Text objects - Select abbreviations
    Day 8: Macros - Include abbreviations
    Day 7: Replace - Different from abbreviations
    Day 6: Visual mode basics
    Day 5: Search - Abbreviate search patterns
    Day 4: Repeat - Can't repeat abbreviations
    Day 3: Yank/paste - Yank abbreviation text
    Day 2: Delete/change - Edit abbreviations
    Day 1: Movement - Navigate abbreviations

Your tasks for Day 29:
1. Create practical abbreviations for common typos and text
2. Set up command abbreviations for complex commands  
3. Build dynamic abbreviations with expressions
4. Organize project-specific abbreviations
5. Master abbreviation expansion control

Scenario: You're tired of typing the same long commands and
text snippets repeatedly throughout your projects.
"""

# Task 1: Common typos and corrections
# Type these typos and let abbreviations fix them:
# teh -> the
# adn -> and  
# waht -> what
# tehre -> there
# shoudl -> should

class EmailComposer:
    """Example class for practicing abbreviations."""
    
    def __init__(self):
        # Task 2: Email abbreviations
        # Set up: :iab @@ your.email@example.com
        self.sender = "@@"  # Type @@ and space
        
        # Set up: :iab sig Best regards,<cr>Your Name<cr>Title
        self.signature = "sig"  # Type sig and space
        
    def compose_email(self, recipient, subject):
        # Task 3: Common phrases
        # :iab ty Thank you
        # :iab br Best regards
        # :iab pfa Please find attached
        # :iab asap as soon as possible
        
        email = f"""
        To: {recipient}
        From: {self.sender}
        Subject: {subject}
        
        Dear {recipient.split('@')[0]},
        
        ty for your email. I will respond asap.
        
        pfa the requested documents.
        
        br,
        {self.signature}
        """
        return email

# Task 4: Programming abbreviations
def create_python_snippets():
    """Common Python abbreviations."""
    # Set up these abbreviations:
    # :iab #! #!/usr/bin/env python3
    # :iab ifmain if __name__ == "__main__":
    # :iab pdb import pdb; pdb.set_trace()
    # :iab pp from pprint import pprint
    
    # Type #! and space for shebang
    shebang = "#!"
    
    # Type ifmain and space
    main_guard = "ifmain"
    
    # Type pdb and space for debugger
    debugger = "pdb"
    
    return "Abbreviations ready!"

# Task 5: Dynamic abbreviations
def setup_dynamic_abbreviations():
    """Examples of dynamic expansions."""
    # :iab dts <c-r>=strftime('%Y-%m-%d')<cr>
    # :iab tms <c-r>=strftime('%H:%M:%S')<cr>
    # :iab pwd <c-r>=getcwd()<cr>
    # :iab fn <c-r>=expand('%:t')<cr>
    
    # Type dts for date stamp
    date_stamp = "dts"
    
    # Type tms for time stamp
    time_stamp = "tms"
    
    # Type pwd for current directory
    current_dir = "pwd"
    
    # Type fn for filename
    filename = "fn"
    
    return "Dynamic abbreviations configured!"

# Command abbreviations examples
# :cab W w !sudo tee %
# :cab Q q!
# :cab WQ wq
# :cab H tab help
# :cab VG vimgrep
# :cab AG argdo
# :cab BD bufdo

class ProjectAbbreviations:
    """Project-specific abbreviations."""
    
    def __init__(self):
        # Company/project specific
        # :iab cname YourCompany Inc.
        # :iab proj ProjectName v1.0
        # :iab copy Copyright (c) 2024
        # :iab lic MIT License
        
        self.company = "cname"  # Expands to company name
        self.project = "proj"   # Expands to project info
        self.copyright = "copy" # Expands to copyright
        self.license = "lic"    # Expands to license type
    
    def generate_header(self):
        """Generate file header with abbreviations."""
        # TODO: Add more headers - expands with :iab TODO TODO(username):
        # FIXME: Handle edge case - expands with :iab FIXME FIXME(username):
        
        header = f"""
        {self.project}
        {self.copyright} {self.company}
        {self.license}
        
        TODO: Complete implementation
        FIXME: Error handling needed
        """
        return header

def verify_abbreviations():
    """Test abbreviation understanding."""
    results = []
    
    # Test 1: Basic abbreviations created
    basic_abbr = False  # Would check :ab output
    results.append(("Basic abbreviations created", basic_abbr))
    
    # Test 2: Command abbreviations
    cmd_abbr = False  # Would verify :cab entries
    results.append(("Command abbreviations set up", cmd_abbr))
    
    # Test 3: Dynamic abbreviations
    dynamic_abbr = False  # Would check expression abbr
    results.append(("Dynamic abbreviations configured", dynamic_abbr))
    
    # Test 4: Project abbreviations
    project_abbr = True  # Placeholder
    results.append(("Project-specific abbreviations", project_abbr))
    
    # Test 5: Expansion control
    control_abbr = True  # Placeholder
    results.append(("Abbreviation control mastered", control_abbr))
    
    return results

if __name__ == "__main__":
    print("=== Vim Challenge Day 29 ===\n")
    
    # Examples of what abbreviations expand to:
    print("Abbreviation Examples:")
    print("  teh -> the")
    print("  @@ -> your.email@example.com")
    print("  sig -> Best regards,\\nYour Name")
    print("  dts -> 2024-01-15 (current date)")
    print("  W -> w !sudo tee %")
    print("  TODO -> TODO(username):\n")
    
    # Run tests
    test_results = verify_abbreviations()
    passed = 0
    
    for test_name, result in test_results:
        status = "✓" if result else "✗"
        print(f"{status} {test_name}")
        if result:
            passed += 1
    
    total = len(test_results)
    if passed == total:
        print("\n✓ All tests passed!")
    else:
        print(f"\n✗ {total - passed} tests failed. Keep practicing abbreviations!")