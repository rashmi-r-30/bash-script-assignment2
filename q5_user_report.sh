#!/bin/bash
# Q5 - User Account Reporter
# Student: Rashmi Gowda

while true
do
    echo ""
    echo "===== USER REPORT ====="
    echo "1. Show all users"
    echo "2. Show current user info"
    echo "3. Show users with login access"
    echo "4. Show recent logins"
    echo "5. Show sudo users"
    echo "6. Exit"
    echo "======================="
    echo -n "Choose an option: "
    read choice

    case $choice in
        1)
            echo "All users on system:"
            cat /etc/passwd | cut -d: -f1
            ;;
        2)
            echo "Current user: $(whoami)"
            echo "User ID info:"
            id
            ;;
        3)
            echo "Users with login access:"
            grep -v "nologin\|false" /etc/passwd | cut -d: -f1
            ;;
        4)
            echo "Recent logins:"
            last | head -10
            ;;
        5)
            echo "Sudo users:"
            grep sudo /etc/group
            ;;
        6)
            echo "Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid option!"
            ;;
    esac
done
