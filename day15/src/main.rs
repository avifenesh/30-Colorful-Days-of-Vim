/*!
 * Welcome to Day 15 of your Vim challenge!
 *
 * BUFFER MANAGEMENT - Mastering multiple files!
 * Today's focus: Working with multiple buffers and file navigation
 *
 * New commands for today:
 *     - `:ls` or `:buffers` - List all open buffers
 *     - `:b <name>` - Switch to buffer by name/number
 *     - `:bn` or `:bnext` - Next buffer
 *     - `:bp` or `:bprev` - Previous buffer
 *     - `:bf` or `:bfirst` - First buffer
 *     - `:bl` or `:blast` - Last buffer
 *     - `:bd` or `:bdelete` - Delete/close current buffer
 *     - `:bd <name>` - Delete specific buffer
 *     - `:e <filename>` - Edit/open new file in buffer
 *     - `:enew` - Create new empty buffer
 *     - `:badd <file>` - Add file to buffer list without opening
 *     - `:ball` - Open all buffers in windows
 *     - `Ctrl-^` - Toggle between current and alternate buffer
 *     - `:sb <name>` - Split and switch to buffer
 *     - `:vert sb <name>` - Vertical split and switch to buffer
 *
 * REMINDERS - Keys from previous days:
 *     Day 14: Visual mode mastery - `gv`, `o`, `u`/`U`, `>`, `<`
 *     Day 13: Registers - `"ay`, `"ap`, `"_d`, `:reg`
 *     Day 12: Marks - `ma`, `'a`, ``` (jump to last edit)
 *     Day 11: Global commands - `:g/pattern/d`, `:v/pattern/d`
 *     Day 10: Visual mode practice - `v`, `V`, `Ctrl-v`
 *     Day 9: Text objects - `iw`, `aw`, `i"`, `a"`
 *     Day 8: Macros - `qa`, `@a`
 *     Day 7: Replace - `:%s/old/new/g`
 *     Day 6: Visual mode - `v`, `V`, `Ctrl-v`
 *     Day 5: Search - `/pattern`, `n`, `N`
 *     Day 4: Repeat - `.`, `3w`, `2dd`
 *     Day 3: Yank/paste - `yy`, `p`, `P`
 *     Day 2: Delete/change - `dw`, `cw`
 *     Day 1: Movement - `w`, `b`, `e`, `0`, `$`
 *
 * Your tasks for Day 15:
 * 1. Create additional buffer files and navigate between them using :ls, :b
 * 2. Practice buffer cycling with :bn/:bp while editing multiple files
 * 3. Use Ctrl-^ to toggle between current and alternate buffers
 * 4. Close specific buffers while keeping others open using :bd
 * 5. Split buffers into windows for side-by-side editing
 * 6. Practice buffer management workflow for multi-file projects
 */

use std::collections::HashMap;
use std::fs;

/// Task 1: Configuration module - create as separate buffer
/// Instructions: Use :e config.rs to create this as a separate file/buffer
/// Then navigate back and forth using :ls, :b config, :b main
pub struct Config {
    pub server_port: u16,
    pub database_url: String,
    pub log_level: String,
    pub max_connections: u32,
}

impl Config {
    pub fn new() -> Self {
        Self {
            server_port: 8080,
            database_url: "localhost:5432".to_string(),
            log_level: "info".to_string(),
            max_connections: 100,
        }
    }

    // Task 2: This validation logic should be in a separate utils buffer
    // Create utils.rs with :e utils.rs, move this there, then import it
    pub fn validate(&self) -> Result<(), String> {
        if self.server_port == 0 {
            return Err("Invalid port number".to_string());
        }
        if self.database_url.is_empty() {
            return Err("Database URL cannot be empty".to_string());
        }
        if self.max_connections == 0 {
            return Err("Max connections must be greater than 0".to_string());
        }
        Ok(())
    }
}

/// Task 3: User management - create as separate buffer
/// Instructions: Use :e user.rs, move this struct there
/// Practice navigating: :b user, :b main, Ctrl-^ to toggle
#[derive(Debug, Clone)]
pub struct User {
    pub id: u32,
    pub name: String,
    pub email: String,
    pub active: bool,
}

impl User {
    pub fn new(id: u32, name: String, email: String) -> Self {
        Self {
            id,
            name,
            email,
            active: true,
        }
    }

    // Task 4: Move this validation to utils.rs buffer
    // Use :b utils, add this function, then update imports
    pub fn validate_email(&self) -> bool {
        self.email.contains('@') && self.email.contains('.')
    }
}

/// Task 5: Database operations - create as db.rs buffer
/// Instructions: Use :e db.rs, move this implementation there
/// Practice buffer management: :ls to see all, :bd to close specific ones
pub struct Database {
    users: HashMap<u32, User>,
    next_id: u32,
}

impl Database {
    pub fn new() -> Self {
        Self {
            users: HashMap::new(),
            next_id: 1,
        }
    }

    pub fn add_user(&mut self, name: String, email: String) -> Result<u32, String> {
        let user = User::new(self.next_id, name, email);

        if !user.validate_email() {
            return Err("Invalid email format".to_string());
        }

        let id = self.next_id;
        self.users.insert(id, user);
        self.next_id += 1;
        Ok(id)
    }

    pub fn get_user(&self, id: u32) -> Option<&User> {
        self.users.get(&id)
    }

    pub fn list_users(&self) -> Vec<&User> {
        self.users.values().collect()
    }

    pub fn user_count(&self) -> usize {
        self.users.len()
    }
}

// Task 6: Create a tests.rs buffer for testing functions
// Use :e tests.rs, move test functions there
// Practice: :sb tests (split buffer), :vert sb tests (vertical split)
fn test_config() -> Result<(), String> {
    println!("Testing configuration...");

    let config = Config::new();
    config.validate()?;

    println!("✓ Config validation passed");
    Ok(())
}

fn test_user_creation() -> Result<(), String> {
    println!("Testing user creation...");

    let user = User::new(1, "John Doe".to_string(), "john@example.com".to_string());
    if !user.validate_email() {
        return Err("Email validation failed".to_string());
    }

    println!("✓ User creation and validation passed");
    Ok(())
}

fn test_database_operations() -> Result<(), String> {
    println!("Testing database operations...");

    let mut db = Database::new();

    // Add users
    let id1 = db.add_user("Alice".to_string(), "alice@example.com".to_string())?;
    let id2 = db.add_user("Bob".to_string(), "bob@example.com".to_string())?;

    // Verify users
    let alice = db.get_user(id1).ok_or("Alice not found")?;
    let bob = db.get_user(id2).ok_or("Bob not found")?;

    if alice.name != "Alice" || bob.name != "Bob" {
        return Err("User names don't match".to_string());
    }

    if db.user_count() != 2 {
        return Err("Incorrect user count".to_string());
    }

    println!("✓ Database operations passed");
    Ok(())
}

// Main function - this should remain in main.rs
fn main() {
    println!("=== Vim Challenge Day 15 ===");
    println!("Buffer Management Challenge\n");

    let mut all_passed = true;

    // Run tests
    if let Err(e) = test_config() {
        println!("✗ Config test failed: {}", e);
        all_passed = false;
    }

    if let Err(e) = test_user_creation() {
        println!("✗ User creation test failed: {}", e);
        all_passed = false;
    }

    if let Err(e) = test_database_operations() {
        println!("✗ Database operations test failed: {}", e);
        all_passed = false;
    }

    if all_passed {
        println!("\n✓ All tests passed!");
    } else {
        println!("\n✗ Some tests failed.");
    }

    println!("\nBuffer Management Practice:");
    println!("1. Create separate files with :e filename.rs");
    println!("2. Navigate between buffers with :ls, :b <name>");
    println!("3. Cycle through buffers with :bn, :bp");
    println!("4. Toggle between buffers with Ctrl-^");
    println!("5. Close buffers with :bd <name>");
    println!("6. Split buffers with :sb, :vert sb");

    println!("\nRecommended workflow:");
    println!("- :e config.rs → move Config struct and impl");
    println!("- :e user.rs → move User struct and impl");
    println!("- :e utils.rs → move validation functions");
    println!("- :e db.rs → move Database struct and impl");
    println!("- :e tests.rs → move test functions");
    println!("- Use :ls to see all buffers");
    println!("- Navigate with :b <name> or :bn/:bp");
    println!("- Use Ctrl-^ to toggle between current and alternate");

    // Simulate multi-buffer development workflow
    let config = Config::new();
    if let Err(e) = config.validate() {
        println!("Configuration error: {}", e);
        return;
    }

    let mut db = Database::new();
    match db.add_user("Test User".to_string(), "test@example.com".to_string()) {
        Ok(id) => println!("Created user with ID: {}", id),
        Err(e) => println!("User creation failed: {}", e),
    }

    println!("Total users in database: {}", db.user_count());
}