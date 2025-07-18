#!/bin/bash

# Unified test runner for 30 Days of Vim Challenge

# Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'
BOLD='\033[1m'

# Counters
TOTAL_TESTS=0
PASSED_TESTS=0
FAILED_TESTS=0
SKIPPED_TESTS=0

# Arrays to track results
declare -a FAILED_DAYS
declare -a PASSED_DAYS
declare -a SKIPPED_DAYS

# Function to run test for a specific day
run_day_test() {
    local day=$1
    local day_dir="day${day}"
    
    if [ ! -d "$day_dir" ]; then
        echo -e "${YELLOW}⚠ Day ${day}: Directory not found (skipped)${NC}"
        SKIPPED_TESTS=$((SKIPPED_TESTS + 1))
        SKIPPED_DAYS+=($day)
        return
    fi
    
    cd "$day_dir" || return
    
    if [ ! -f "test.sh" ]; then
        echo -e "${YELLOW}⚠ Day ${day}: test.sh not found (skipped)${NC}"
        cd ..
        SKIPPED_TESTS=$((SKIPPED_TESTS + 1))
        SKIPPED_DAYS+=($day)
        return
    fi
    
    # Run the test
    chmod +x test.sh
    echo -ne "Day ${day}: "
    
    # Capture output and exit code
    output=$(./test.sh 2>&1)
    exit_code=$?
    
    if [ $exit_code -eq 0 ]; then
        echo -e "${GREEN}✓ PASSED${NC}"
        PASSED_TESTS=$((PASSED_TESTS + 1))
        PASSED_DAYS+=($day)
    else
        echo -e "${RED}✗ FAILED${NC}"
        FAILED_TESTS=$((FAILED_TESTS + 1))
        FAILED_DAYS+=($day)
        
        # Show first few lines of error if verbose mode
        if [ "$VERBOSE" = "true" ]; then
            echo -e "${RED}Error output:${NC}"
            echo "$output" | head -5
            echo "..."
        fi
    fi
    
    cd ..
}

# Function to run tests by language
run_language_tests() {
    local lang=$1
    local days=()
    
    case $lang in
        c|C)
            days=(1 2 8 14 20 26)
            echo -e "\n${BOLD}Testing C days...${NC}"
            ;;
        rust|Rust)
            days=(3 9 15 21 27)
            echo -e "\n${BOLD}Testing Rust days...${NC}"
            ;;
        js|javascript|JavaScript)
            days=(4 10 16 22 28)
            echo -e "\n${BOLD}Testing JavaScript days...${NC}"
            ;;
        python|Python)
            days=(5 11 17 23 29)
            echo -e "\n${BOLD}Testing Python days...${NC}"
            ;;
        lua|Lua)
            days=(6 12 18 24 30)
            echo -e "\n${BOLD}Testing Lua days...${NC}"
            ;;
        java|Java)
            days=(7 13 19 25)
            echo -e "\n${BOLD}Testing Java days...${NC}"
            ;;
        *)
            echo -e "${RED}Unknown language: $lang${NC}"
            return
            ;;
    esac
    
    for day in "${days[@]}"; do
        run_day_test $day
        TOTAL_TESTS=$((TOTAL_TESTS + 1))
    done
}

# Function to display summary
show_summary() {
    echo -e "\n${BOLD}=== Test Summary ===${NC}"
    echo -e "Total tests: ${TOTAL_TESTS}"
    echo -e "${GREEN}Passed: ${PASSED_TESTS}${NC}"
    echo -e "${RED}Failed: ${FAILED_TESTS}${NC}"
    echo -e "${YELLOW}Skipped: ${SKIPPED_TESTS}${NC}"
    
    # Success rate
    if [ $TOTAL_TESTS -gt 0 ]; then
        local success_rate=$((PASSED_TESTS * 100 / TOTAL_TESTS))
        echo -e "\nSuccess rate: ${BOLD}${success_rate}%${NC}"
    fi
    
    # Show failed days if any
    if [ ${#FAILED_DAYS[@]} -gt 0 ]; then
        echo -e "\n${RED}Failed days:${NC} ${FAILED_DAYS[*]}"
    fi
    
    # Show skipped days if any
    if [ ${#SKIPPED_DAYS[@]} -gt 0 ]; then
        echo -e "${YELLOW}Skipped days:${NC} ${SKIPPED_DAYS[*]}"
    fi
    
    # Exit code based on failures
    if [ $FAILED_TESTS -gt 0 ]; then
        exit 1
    else
        exit 0
    fi
}

# Function to show help
show_help() {
    echo "Unified Test Runner for 30 Days of Vim Challenge"
    echo ""
    echo "Usage: ./test-runner.sh [options]"
    echo ""
    echo "Options:"
    echo "  -a, --all          Run all tests (default)"
    echo "  -d, --day <n>      Run test for specific day"
    echo "  -l, --lang <lang>  Run tests for specific language"
    echo "                     (c, rust, js, python, lua, java)"
    echo "  -r, --range <s-e>  Run tests for day range (e.g., 1-7)"
    echo "  -v, --verbose      Show detailed error output"
    echo "  -h, --help         Show this help message"
    echo ""
    echo "Examples:"
    echo "  ./test-runner.sh              # Run all tests"
    echo "  ./test-runner.sh -d 5         # Run test for day 5"
    echo "  ./test-runner.sh -l rust      # Run all Rust tests"
    echo "  ./test-runner.sh -r 1-10      # Run tests for days 1-10"
    echo "  ./test-runner.sh -v           # Run all tests with verbose output"
}

# Parse command line arguments
VERBOSE=false
MODE="all"
SPECIFIC_DAY=""
SPECIFIC_LANG=""
RANGE_START=""
RANGE_END=""

while [[ $# -gt 0 ]]; do
    case $1 in
        -a|--all)
            MODE="all"
            shift
            ;;
        -d|--day)
            MODE="day"
            SPECIFIC_DAY="$2"
            shift 2
            ;;
        -l|--lang)
            MODE="lang"
            SPECIFIC_LANG="$2"
            shift 2
            ;;
        -r|--range)
            MODE="range"
            IFS='-' read -r RANGE_START RANGE_END <<< "$2"
            shift 2
            ;;
        -v|--verbose)
            VERBOSE=true
            shift
            ;;
        -h|--help)
            show_help
            exit 0
            ;;
        *)
            echo -e "${RED}Unknown option: $1${NC}"
            show_help
            exit 1
            ;;
    esac
done

# Main execution
echo -e "${BOLD}=== 30 Days of Vim Challenge - Test Runner ===${NC}"

case $MODE in
    all)
        echo -e "\nRunning all tests..."
        for day in {1..30}; do
            run_day_test $day
            TOTAL_TESTS=$((TOTAL_TESTS + 1))
        done
        ;;
    day)
        if [[ ! "$SPECIFIC_DAY" =~ ^[0-9]+$ ]] || [ "$SPECIFIC_DAY" -lt 1 ] || [ "$SPECIFIC_DAY" -gt 30 ]; then
            echo -e "${RED}Error: Invalid day number. Must be between 1 and 30.${NC}"
            exit 1
        fi
        echo -e "\nRunning test for day $SPECIFIC_DAY..."
        run_day_test "$SPECIFIC_DAY"
        TOTAL_TESTS=1
        ;;
    lang)
        run_language_tests "$SPECIFIC_LANG"
        ;;
    range)
        if [[ ! "$RANGE_START" =~ ^[0-9]+$ ]] || [[ ! "$RANGE_END" =~ ^[0-9]+$ ]]; then
            echo -e "${RED}Error: Invalid range. Use format: -r 1-10${NC}"
            exit 1
        fi
        echo -e "\nRunning tests for days $RANGE_START to $RANGE_END..."
        for ((day=RANGE_START; day<=RANGE_END; day++)); do
            run_day_test $day
            TOTAL_TESTS=$((TOTAL_TESTS + 1))
        done
        ;;
esac

# Show summary
show_summary