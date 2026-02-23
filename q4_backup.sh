#!/bin/bash
# Q4 - Backup Script
# Student: Rashmi Gowda

BACKUP_DIR="$HOME/backups"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
mkdir -p $BACKUP_DIR

echo "Enter folder to backup:"
read source

if [ ! -e "$source" ]; then
    echo "Error: folder not found!"
else
    BACKUP_NAME="backup_${TIMESTAMP}.tar.gz"
    tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$source"
    echo "Backup created: $BACKUP_NAME"
    echo "Saved in: $BACKUP_DIR"
    ls -lh $BACKUP_DIR
fi
