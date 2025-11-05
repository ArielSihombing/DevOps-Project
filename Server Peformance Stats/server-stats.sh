#!/bin/bash
echo "Server Peformance Stats"

# OS version
echo "OS Version: "
lsb_release -d
echo ""

# Uptime
echo "Uptime: "
uptime -p
echo ""

# CPU usage
echo "CPU Usage: "
top -bn1 | grep "Cpu(s)"
echo ""

# Memory usage
echo "Memory Usage: "
free -h
echo ""

# Disk usage
echo "Disk Usage"
df -h --total | grep total
echo ""

# CPU usage
echo "Top 5 Processes by CPU Usage: "
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
echo ""

# Top 5 process by memory
echo "Top 5 Process by Memory Usage: "
ps -eo pid,comm,%mem --sort=-%mem | head -n 6
echo ""

#logged in users
echo "Logged in users:"
who
echo ""

