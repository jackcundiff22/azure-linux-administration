#!/bin/bash

echo "===== SYSTEM STATUS ====="
echo

echo "Date:"
date

echo
echo "Uptime:"
uptime

echo
echo "Disk Usage:"
df -h

echo
echo "Memory Usage:"
free -h

echo
echo "Nginx Status:"
systemctl is-active nginx

echo
echo "Top CPU Processes:"