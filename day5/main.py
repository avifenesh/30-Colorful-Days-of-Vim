"""
Welcome to Day 5 of your Vim challenge!

Today, you'll learn about searching and replacing.

New keys for today:
    - `/`: Search forward for a pattern.
    - `?`: Search backward for a pattern.
    - `n`: Repeat the search in the same direction.
    - `N`: Repeat the search in the opposite direction.
    - `:s/old/new/`: Replace the first occurrence of 'old' with 'new' on the current line.
    - `:s/old/new/g`: Replace all occurrences of 'old' with 'new' on the current line.
    - `:%s/old/new/g`: Replace all occurrences of 'old' with 'new' in the entire file.

REMINDERS - Keys from previous days:
    Day 4: Counts & repeat - `.` (repeat last change), `3w`, `5j`, `2dd`, `3x`
    Day 3: Yank/paste - `yy`, `p`, `P`, `yw`, `y$`
    Day 2: Delete/change - `dw`, `cw`, `d$`, `c$`
    Day 1: Movement - `w`, `b`, `e`, `0`, `$`, `h`, `j`, `k`, `l`

Your tasks:
1. Fix all occurrences of 'bug' to 'feature' in the get_features function
2. Fix all incorrect animal names in the get_animals function
"""


def get_features():
    """TASK 1: Replace all occurrences of 'bug' with 'feature'"""
    items = [
        "This is a bug in the code",
        "Another bug was found",
        "Fix this bug please",
        "No more bugs allowed",
    ]
    return items


def get_animals():
    """TASK 2: Fix the incorrect animal names (dgo -> dog, cta -> cat)"""
    animals = [
        "I have a dgo",
        "My cta is sleeping",
        "The dgo is barking",
        "A cta walked by",
    ]
    return animals


# Test the functions
if __name__ == "__main__":
    print("=== Vim Challenge Day 5 ===\n")

    # Test 1
    features = get_features()
    all_features = all("feature" in item and "bug" not in item for item in features)

    if all_features:
        print("✓ Task 1 passed!")
    else:
        print("✗ Task 1 failed. Still contains 'bug' instead of 'feature'")
        for item in features:
            if "feature" in item:
                print(f"  Found: {item}")

    # Test 2
    animals = get_animals()
    correct_animals = all(
        ("dog" in item or "cat" in item) and "dgo" not in item and "cta" not in item
        for item in animals
    )

    if correct_animals:
        print("✓ Task 2 passed!")
    else:
        print("✗ Task 2 failed. Still contains typos")
        for item in animals:
            if "dgo" in item or "cta" in item:
                print(f"  Found: {item}")

