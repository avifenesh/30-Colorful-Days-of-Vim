"""
DAY 23: LOCATION LIST - WINDOW-LOCAL ERROR NAVIGATION

Today's focus: Location lists - Vim's window-specific alternative to quickfix,
perfect for local error tracking and window-focused development tasks.

KEY COMMANDS TO PRACTICE:
════════════════════════════════════════════════════════════════

BASIC LOCATION LIST OPERATIONS:
─────────────────────────────────────────────────────────────────
:lmake                 - Run make command and populate location list
:lopen                 - Open location list window
:lclose                - Close location list window
:llist                 - List all location list entries

NAVIGATION:
─────────────────────────────────────────────────────────────────
:lnext or :ln          - Jump to next location entry
:lprev or :lp          - Jump to previous location entry
:lfirst                - Jump to first location entry
:llast                 - Jump to last location entry
:ll N                  - Jump to location entry number N

SEARCH AND POPULATE:
─────────────────────────────────────────────────────────────────
:lgrep pattern files   - Search using external grep, populate location list
:lvimgrep pattern files- Search using Vim's internal grep
:lbuffer               - Search in current buffer only

LOCATION LIST HISTORY:
─────────────────────────────────────────────────────────────────
:lolder                - Go to older location list
:lnewer                - Go to newer location list

ADVANCED OPERATIONS:
─────────────────────────────────────────────────────────────────
:ldo command           - Execute command on each location entry
:lfdo command          - Execute command on each file in location list
:lgetexpr expr         - Set location list from expression
:laddexpr expr         - Add to location list from expression

KEY DIFFERENCE FROM QUICKFIX:
─────────────────────────────────────────────────────────────────
• Location list is window-local (each window has its own)
• Quickfix is global (shared across all windows)
• Perfect for focused, window-specific development tasks
"""

print("=== Vim Challenge Day 23: Location List ===\n")

# TASK 1: Create syntax errors for location list practice
# Use :lmake to populate location list, then :lopen to see errors
# Navigate with :lnext, :lprev to jump between errors

# ERROR 1: Indentation error (line will be around 70)
def broken_function():
return "missing indentation"

# ERROR 2: Undefined variable (line will be around 73)
print(undefined_variable)

# ERROR 3: Syntax error - missing colon (line will be around 76)
if True
    print("missing colon")

# TASK 2: Search patterns using location list
# Use :lvimgrep to find all TODO comments in this file
# Practice: :lvimgrep /TODO/ % | lopen

# TODO: This is the first todo item - find me with lvimgrep
def process_user_data(user_data):
    """Process user data with validation."""
    # TODO: Add comprehensive input validation
    if not user_data:
        return None

    # TODO: Implement data sanitization
    cleaned_data = {}
    for key, value in user_data.items():
        # TODO: Add proper type checking
        cleaned_data[key] = str(value).strip()

    return cleaned_data

# TASK 3: Window-specific searches
# Open multiple windows (:split) and create different location lists
# Window 1: Search for TODOs
# Window 2: Search for FIXMEs
# Window 3: Search for NOTEs

def calculate_statistics(numbers):
    """Calculate statistical measures."""
    # FIXME: Handle empty list case properly
    if not numbers:
        return {}

    # FIXME: This doesn't handle non-numeric values
    total = sum(numbers)
    count = len(numbers)

    # NOTE: Consider using more robust statistical libraries
    mean = total / count

    # FIXME: Median calculation is naive
    sorted_nums = sorted(numbers)
    mid = len(sorted_nums) // 2
    median = sorted_nums[mid]

    return {
        'mean': mean,
        'median': median,
        'count': count,
        'total': total
    }

# TASK 4: Location list expressions and custom filtering
# Use :lgetexpr to populate location list with custom data

class ValidationError:
    """Custom validation error for location list practice."""

    def __init__(self, line, message, severity='ERROR'):
        self.line = line
        self.message = message
        self.severity = severity

    def to_location_format(self, filename):
        """Convert to location list format: filename:line:col:message"""
        return f"{filename}:{self.line}:1:{self.severity}: {self.message}"

# Sample validation errors for location list practice
validation_errors = [
    ValidationError(95, "Missing docstring", "WARNING"),
    ValidationError(102, "Variable name too short", "INFO"),
    ValidationError(108, "Function too complex", "ERROR"),
    ValidationError(115, "Unused import", "WARNING"),
]

# TASK 5: Advanced location list operations
# Practice :ldo and :lfdo for batch operations

def find_security_issues(code_lines):
    """Find potential security issues in code."""
    issues = []

    for i, line in enumerate(code_lines, 1):
        # SECURITY: Potential SQL injection
        if 'exec(' in line or 'eval(' in line:
            issues.append(ValidationError(i, "Dangerous eval/exec usage", "SECURITY"))

        # SECURITY: Hardcoded passwords
        if 'password' in line.lower() and '=' in line:
            issues.append(ValidationError(i, "Potential hardcoded password", "SECURITY"))

        # SECURITY: Unsafe file operations
        if 'open(' in line and '..' in line:
            issues.append(ValidationError(i, "Potential path traversal", "SECURITY"))

    return issues

# TASK 6: Multiple window location list demonstration
# Create different location lists for different purposes

class CodeReview:
    """Code review helper using location lists."""

    def __init__(self, filename):
        self.filename = filename
        self.issues = {
            'style': [],
            'performance': [],
            'security': [],
            'bugs': []
        }

    def add_style_issue(self, line, message):
        """Add a style issue to location list."""
        # STYLE: Line too long
        self.issues['style'].append(
            ValidationError(line, f"Style: {message}", "STYLE")
        )

    def add_performance_issue(self, line, message):
        """Add a performance issue to location list."""
        # PERFORMANCE: Inefficient algorithm
        self.issues['performance'].append(
            ValidationError(line, f"Performance: {message}", "PERF")
        )

    def generate_location_lists(self):
        """Generate location list entries for each category."""
        location_data = {}

        for category, issues in self.issues.items():
            location_data[category] = [
                issue.to_location_format(self.filename)
                for issue in issues
            ]

        return location_data

# TASK 7: Practice the difference between quickfix and location lists

def demonstrate_difference():
    """Show the key differences between quickfix and location lists."""
    differences = {
        'scope': {
            'quickfix': 'Global - shared across all windows',
            'location': 'Window-local - each window has its own'
        },
        'use_cases': {
            'quickfix': 'Project-wide builds, searches, linting',
            'location': 'Focused tasks, window-specific errors'
        },
        'commands': {
            'quickfix': ':make, :copen, :cnext, :cprev',
            'location': ':lmake, :lopen, :lnext, :lprev'
        },
        'history': {
            'quickfix': ':colder, :cnewer',
            'location': ':lolder, :lnewer'
        }
    }
    return differences

# Test verification function
def run_tests():
    """Test location list functionality and code structure."""
    passed = 0
    total = 7

    print("Testing Location List Skills:")

    # Test 1: Check for syntax errors for practice
    try:
        # This should fail due to intentional syntax errors
        compile(open(__file__).read(), __file__, 'exec')
        print("⚠️  Test 1: No syntax errors (may have been fixed)")
    except SyntaxError:
        print("✅ Test 1: Syntax errors present for location list practice")
        passed += 1

    # Test 2: TODO items for search practice
    with open(__file__, 'r') as f:
        content = f.read()
        todo_count = content.count('TODO')

    if todo_count >= 4:
        print(f"✅ Test 2: Found {todo_count} TODO items for lvimgrep practice")
        passed += 1
    else:
        print(f"❌ Test 2: Only found {todo_count} TODO items (need at least 4)")

    # Test 3: Multiple comment types for different searches
    fixme_count = content.count('FIXME')
    note_count = content.count('NOTE')
    security_count = content.count('SECURITY')

    if fixme_count >= 3 and note_count >= 1 and security_count >= 3:
        print("✅ Test 3: Multiple comment types available for window-specific searches")
        passed += 1
    else:
        print("❌ Test 3: Not enough variety in comment types")

    # Test 4: Custom validation error system
    if len(validation_errors) >= 4:
        print("✅ Test 4: Custom validation error system for location list expressions")
        passed += 1
    else:
        print("❌ Test 4: Not enough validation errors")

    # Test 5: Security issues for advanced practice
    sample_code = [
        "exec('rm -rf /')",
        "password = 'secret123'",
        "open('../../../etc/passwd')"
    ]
    security_issues = find_security_issues(sample_code)

    if len(security_issues) >= 3:
        print("✅ Test 5: Security issue detection for advanced location list usage")
        passed += 1
    else:
        print("❌ Test 5: Not enough security issues detected")

    # Test 6: Code review system
    review = CodeReview("main.py")
    review.add_style_issue(100, "Line too long")
    review.add_performance_issue(150, "Nested loops")

    location_data = review.generate_location_lists()
    if 'style' in location_data and 'performance' in location_data:
        print("✅ Test 6: Code review system with categorized location lists")
        passed += 1
    else:
        print("❌ Test 6: Code review system incomplete")

    # Test 7: Difference demonstration
    differences = demonstrate_difference()
    if all(key in differences for key in ['scope', 'use_cases', 'commands']):
        print("✅ Test 7: Location list vs quickfix differences documented")
        passed += 1
    else:
        print("❌ Test 7: Missing difference documentation")

    print(f"\nResults: {passed}/{total} tests passed")

    if passed == total:
        print("🎉 Excellent! All location list exercises are ready.")
        print("\nNext steps:")
        print("1. Practice :lmake to find syntax errors in current window")
        print("2. Use :lopen to see the location list window")
        print("3. Navigate with :lnext/:lprev between errors")
        print("4. Try :lvimgrep /TODO/ % for window-specific searches")
        print("5. Use :split and create different location lists per window")
        print("6. Practice :ldo for batch operations on location entries")
        print("7. Compare with quickfix to understand the differences")
    else:
        print("⚠️  Some tests failed - check the code structure")

    return passed == total

"""
EXPECTED WORKFLOW:
══════════════════════════════════════════════════════════════════

1. Open this file in Vim
2. Create multiple windows with :split
3. In window 1: Use :lmake or :lvimgrep /TODO/ %
4. Use :lopen to see location list for this window
5. Navigate with :lnext, :lprev, :ll N
6. Switch to window 2 (Ctrl-w w)
7. Create different location list: :lvimgrep /FIXME/ %
8. Notice each window has its own location list
9. Practice :ldo for batch operations
10. Compare with quickfix behavior (:copen, etc.)

SUCCESS CRITERIA:
─────────────────────────────────────────────────────────────────
✓ All syntax errors fixed (file runs without errors)
✓ Comfortable with :lopen/:lclose
✓ Can navigate with :lnext/:lprev/:ll
✓ Successfully used :lvimgrep for searches
✓ Understand location list as window-local
✓ Can create different location lists per window
✓ Know the difference from quickfix (global vs local)
"""

if __name__ == "__main__":
    # Run the tests
    run_tests()

    # Demonstrate the features
    print("\n=== Location List Features Demo ===")
    differences = demonstrate_difference()

    print("\n📋 Key Differences from Quickfix:")
    for category, diff in differences.items():
        print(f"\n{category.title()}:")
        print(f"  Quickfix: {diff['quickfix']}")
        print(f"  Location: {diff['location']}")

    print("\n🎯 Practice these workflows:")
    print("• :split → different :lvimgrep per window → compare location lists")
    print("• :lmake → :lopen → :lnext/:lprev → fix errors locally")
    print("• :lgetexpr system('custom_command') → populate from external tool")
    print("• :ldo s/old/new/g → batch edit all location entries")