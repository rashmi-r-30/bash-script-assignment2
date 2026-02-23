#!/bin/bash
# Q3 - Log File Analyzer
# Student: Rashmi Gowda

LOG="/var/log/syslog"

while true
do
    echo ""
    echo "===== LOG ANALYZER ====="
    echo "1. Show total number of lines"
    echo "2. Count ERROR lines"
    echo "3. Count WARNING lines"
    echo "4. Show last 10 lines"
    echo "5. Search for a keyword"
    echo "6. Exit"
    echo "========================"
    echo -n "Choose an option: "
    read choice
    case $choice in
        1) wc -l $LOG ;;
        2) grep -i "error" $LOG | wc -l ;;
        3) grep -i "warning" $LOG | wc -l ;;
        4) tail -10 $LOG ;;
        5)
            echo -n "Enter keyword: "
            read keyword
            grep -i "$keyword" $LOG | head -10
            ;;
        6) echo "Goodbye!" ; exit 0 ;;
        *) echo "Invalid option!" ;;
    esac
done
