#!/bin/bash

# Progress tracking system for 30 Days of Vim Challenge

PROGRESS_FILE=".vim_progress"
TOTAL_DAYS=30

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color
BOLD='\033[1m'

# Function to check if a day is completed
check_day_completion() {
    local day=$1
    if [ -f "$PROGRESS_FILE" ] && grep -q "^day${day}$" "$PROGRESS_FILE"; then
        return 0
    else
        return 1
    fi
}

# Function to mark a day as completed
mark_day_complete() {
    local day=$1
    if ! check_day_completion $day; then
        echo "day${day}" >> "$PROGRESS_FILE"
        echo -e "${GREEN}✓ Day ${day} marked as complete!${NC}"
    else
        echo -e "${YELLOW}Day ${day} is already marked as complete.${NC}"
    fi
}

# Function to run test for a specific day
test_day() {
    local day=$1
    local day_dir="day${day}"
    
    if [ ! -d "$day_dir" ]; then
        echo -e "${RED}Error: Directory ${day_dir} not found${NC}"
        return 1
    fi
    
    cd "$day_dir" || return 1
    
    echo -e "${BLUE}Testing Day ${day}...${NC}"
    
    if [ -f "test.sh" ]; then
        chmod +x test.sh
        if ./test.sh; then
            cd ..
            mark_day_complete $day
            return 0
        else
            cd ..
            echo -e "${RED}✗ Day ${day} tests failed${NC}"
            return 1
        fi
    else
        cd ..
        echo -e "${RED}Error: test.sh not found in ${day_dir}${NC}"
        return 1
    fi
}

# Function to display progress
show_progress() {
    local completed=0
    local lang_stats=""
    
    # Count completed days and build language stats
    declare -A lang_completed
    declare -A lang_total
    
    # Language mapping
    lang_total[C]=6
    lang_total[Rust]=5
    lang_total[JavaScript]=5
    lang_total[Python]=5
    lang_total[Lua]=5
    lang_total[Java]=4
    
    lang_completed[C]=0
    lang_completed[Rust]=0
    lang_completed[JavaScript]=0
    lang_completed[Python]=0
    lang_completed[Lua]=0
    lang_completed[Java]=0
    
    echo -e "\n${BOLD}=== 30 Days of Vim Challenge Progress ===${NC}\n"
    
    # Display calendar-like view
    echo -e "${BOLD}Week 1:${NC}"
    for day in {1..7}; do
        if check_day_completion $day; then
            echo -ne "${GREEN}[✓ Day $day]${NC} "
            completed=$((completed + 1))
            
            # Update language stats
            case $day in
                1|2) lang_completed[C]=$((lang_completed[C] + 1)) ;;
                3) lang_completed[Rust]=$((lang_completed[Rust] + 1)) ;;
                4) lang_completed[JavaScript]=$((lang_completed[JavaScript] + 1)) ;;
                5) lang_completed[Python]=$((lang_completed[Python] + 1)) ;;
                6) lang_completed[Lua]=$((lang_completed[Lua] + 1)) ;;
                7) lang_completed[Java]=$((lang_completed[Java] + 1)) ;;
            esac
        else
            echo -ne "${RED}[  Day $day]${NC} "
        fi
    done
    echo -e "\n"
    
    echo -e "${BOLD}Week 2:${NC}"
    for day in {8..14}; do
        if check_day_completion $day; then
            echo -ne "${GREEN}[✓ Day $day]${NC} "
            completed=$((completed + 1))
            
            # Update language stats
            case $day in
                8) lang_completed[C]=$((lang_completed[C] + 1)) ;;
                9) lang_completed[Rust]=$((lang_completed[Rust] + 1)) ;;
                10) lang_completed[JavaScript]=$((lang_completed[JavaScript] + 1)) ;;
                11) lang_completed[Python]=$((lang_completed[Python] + 1)) ;;
                12) lang_completed[Lua]=$((lang_completed[Lua] + 1)) ;;
                13) lang_completed[Java]=$((lang_completed[Java] + 1)) ;;
                14) lang_completed[C]=$((lang_completed[C] + 1)) ;;
            esac
        else
            echo -ne "${RED}[ Day $day]${NC} "
        fi
    done
    echo -e "\n"
    
    echo -e "${BOLD}Week 3:${NC}"
    for day in {15..21}; do
        if check_day_completion $day; then
            echo -ne "${GREEN}[✓ Day $day]${NC} "
            completed=$((completed + 1))
            
            # Update language stats
            case $day in
                15) lang_completed[Rust]=$((lang_completed[Rust] + 1)) ;;
                16) lang_completed[JavaScript]=$((lang_completed[JavaScript] + 1)) ;;
                17) lang_completed[Python]=$((lang_completed[Python] + 1)) ;;
                18) lang_completed[Lua]=$((lang_completed[Lua] + 1)) ;;
                19) lang_completed[Java]=$((lang_completed[Java] + 1)) ;;
                20) lang_completed[C]=$((lang_completed[C] + 1)) ;;
                21) lang_completed[Rust]=$((lang_completed[Rust] + 1)) ;;
            esac
        else
            echo -ne "${RED}[ Day $day]${NC} "
        fi
    done
    echo -e "\n"
    
    echo -e "${BOLD}Week 4+:${NC}"
    for day in {22..30}; do
        if check_day_completion $day; then
            echo -ne "${GREEN}[✓ Day $day]${NC} "
            completed=$((completed + 1))
            
            # Update language stats
            case $day in
                22) lang_completed[JavaScript]=$((lang_completed[JavaScript] + 1)) ;;
                23) lang_completed[Python]=$((lang_completed[Python] + 1)) ;;
                24) lang_completed[Lua]=$((lang_completed[Lua] + 1)) ;;
                25) lang_completed[Java]=$((lang_completed[Java] + 1)) ;;
                26) lang_completed[C]=$((lang_completed[C] + 1)) ;;
                27) lang_completed[Rust]=$((lang_completed[Rust] + 1)) ;;
                28) lang_completed[JavaScript]=$((lang_completed[JavaScript] + 1)) ;;
                29) lang_completed[Python]=$((lang_completed[Python] + 1)) ;;
                30) lang_completed[Lua]=$((lang_completed[Lua] + 1)) ;;
            esac
        else
            echo -ne "${RED}[ Day $day]${NC} "
        fi
    done
    echo -e "\n"
    
    # Progress bar
    local percentage=$((completed * 100 / TOTAL_DAYS))
    local bar_length=50
    local filled_length=$((completed * bar_length / TOTAL_DAYS))
    
    echo -ne "\n${BOLD}Overall Progress:${NC} ["
    for ((i=0; i<filled_length; i++)); do
        echo -ne "${GREEN}▓${NC}"
    done
    for ((i=filled_length; i<bar_length; i++)); do
        echo -ne "░"
    done
    echo -e "] ${BOLD}${percentage}%${NC} (${completed}/${TOTAL_DAYS} days)"
    
    # Language breakdown
    echo -e "\n${BOLD}Progress by Language:${NC}"
    for lang in C Rust JavaScript Python Lua Java; do
        local lang_percent=$((lang_completed[$lang] * 100 / lang_total[$lang]))
        printf "  %-12s: %d/%d (%3d%%)" "$lang" "${lang_completed[$lang]}" "${lang_total[$lang]}" "$lang_percent"
        
        # Mini progress bar
        echo -ne " ["
        local mini_filled=$((lang_completed[$lang] * 10 / lang_total[$lang]))
        for ((i=0; i<mini_filled; i++)); do
            echo -ne "${GREEN}▓${NC}"
        done
        for ((i=mini_filled; i<10; i++)); do
            echo -ne "░"
        done
        echo "]"
    done
    
    # Motivational message
    echo ""
    if [ $completed -eq 0 ]; then
        echo -e "${YELLOW}🚀 Ready to start your Vim journey? Run './progress.sh test 1' to begin!${NC}"
    elif [ $completed -lt 7 ]; then
        echo -e "${YELLOW}🌱 Great start! Keep practicing those basic movements!${NC}"
    elif [ $completed -lt 14 ]; then
        echo -e "${YELLOW}📈 Making good progress! You're mastering the fundamentals!${NC}"
    elif [ $completed -lt 21 ]; then
        echo -e "${YELLOW}🔥 Halfway there! Your Vim skills are really improving!${NC}"
    elif [ $completed -lt 30 ]; then
        echo -e "${YELLOW}💪 Almost there! You're becoming a Vim power user!${NC}"
    else
        echo -e "${GREEN}🎉 Congratulations! You've completed the 30 Days of Vim Challenge!${NC}"
        echo -e "${GREEN}   You're now a Vim master! 🏆${NC}"
    fi
    echo ""
}

# Function to show help
show_help() {
    echo "30 Days of Vim Challenge - Progress Tracker"
    echo ""
    echo "Usage: ./progress.sh [command] [options]"
    echo ""
    echo "Commands:"
    echo "  show              Display current progress (default)"
    echo "  test <day>        Run test for a specific day"
    echo "  mark <day>        Manually mark a day as complete"
    echo "  reset             Reset all progress"
    echo "  next              Show and test the next incomplete day"
    echo "  help              Show this help message"
    echo ""
    echo "Examples:"
    echo "  ./progress.sh              # Show current progress"
    echo "  ./progress.sh test 5       # Test day 5"
    echo "  ./progress.sh next         # Work on the next day"
}

# Function to find next incomplete day
find_next_day() {
    for day in {1..30}; do
        if ! check_day_completion $day; then
            echo $day
            return
        fi
    done
    echo 0
}

# Main script logic
case "${1:-show}" in
    show)
        show_progress
        ;;
    test)
        if [ -z "$2" ]; then
            echo -e "${RED}Error: Please specify a day number${NC}"
            echo "Usage: ./progress.sh test <day>"
            exit 1
        fi
        test_day "$2"
        ;;
    mark)
        if [ -z "$2" ]; then
            echo -e "${RED}Error: Please specify a day number${NC}"
            echo "Usage: ./progress.sh mark <day>"
            exit 1
        fi
        mark_day_complete "$2"
        ;;
    reset)
        echo -n "Are you sure you want to reset all progress? (y/N): "
        read -r confirm
        if [[ $confirm =~ ^[Yy]$ ]]; then
            rm -f "$PROGRESS_FILE"
            echo -e "${GREEN}Progress reset successfully!${NC}"
        else
            echo "Reset cancelled."
        fi
        ;;
    next)
        next_day=$(find_next_day)
        if [ "$next_day" -eq 0 ]; then
            echo -e "${GREEN}Congratulations! You've completed all 30 days!${NC}"
        else
            echo -e "${BLUE}Next day to complete: Day ${next_day}${NC}"
            echo ""
            test_day "$next_day"
        fi
        ;;
    help)
        show_help
        ;;
    *)
        echo -e "${RED}Unknown command: $1${NC}"
        show_help
        exit 1
        ;;
esac