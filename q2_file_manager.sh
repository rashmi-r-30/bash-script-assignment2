#!/bin/bash
# Q2 - File Manager Script
# Student: Rashmi Gowda

while true
do
    echo ""
    echo "===== FILE MANAGER ====="
    echo "1. List files"
    echo "2. Create folder"
    echo "3. Delete file or folder"
    echo "4. Copy file"
    echo "5. Move file"
    echo "6. Exit"
    echo "========================"
    echo -n "Choose an option: "
    read choice

    case $choice in
        1)
            echo -n "Enter folder path (or . for current): "
            read path
            ls -lh "$path"
            ;;
        2)
            echo -n "Enter folder name to create: "
            read foldername
            mkdir "$foldername"
            echo "Folder created!"
            ;;
        3)
            echo -n "Enter name to delete: "
            read name
            rm -rf "$name"
            echo "Deleted!"
            ;;
        4)
            echo -n "Enter source: "
            read src
            echo -n "Enter destination: "
            read dest
            cp -r "$src" "$dest"
            echo "Copied!"
            ;;
        5)
            echo -n "Enter source: "
            read src
            echo -n "Enter destination: "
            read dest
            mv "$src" "$dest"
            echo "Moved!"
            ;;
        6)
            echo "Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid option! Please choose 1-6"
            ;;
    esac
done
        echo -n "Enter destination: "
        read dest
        cp -r "$src" "$dest"
        echo "Copied!"
        ;;
    5)
        echo -n "Enter source: "
        read src
        echo -n "Enter destination: "
        read dest
        mv "$src" "$dest"
        echo "Moved!"
        ;;
    6)
        echo "Goodbye!"
        exit 0
        ;;
    *)
        echo "Invalid option! Please choose 1-6"
        ;;
    esac
done
        echo -n "Enter destination: "
        read dest
        cp -r "$src" "$dest"
        echo "Copied!"
        ;;
    5)
        echo -n "Enter source: "
        read src
        echo -n "Enter destination: "
        read dest
        mv "$src" "$dest"
        echo "Moved!"
        ;;
    6)
        echo "Goodbye!"
        exit 0
        ;;
    *)
        echo "Invalid option! Please choose 1-6"
        ;;
    esac
done
