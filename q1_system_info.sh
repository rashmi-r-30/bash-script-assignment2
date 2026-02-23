#!/bin/bash
#Q1 - System Info script
#student : Rashmi Gowda

echo "----SYSTEM INFORMATION----"
echo "Hostname: $(hostname)"
echo "Date: $(date)"
echo "Kernel Version:  $(uname -r)"
echo "Uptime: $(uptime)"
echo ""
echo "----DISK USAGE----"
df -h

echo "----MEMORY USAGE----"
free -h

echo ""
echo "----DONE---"
