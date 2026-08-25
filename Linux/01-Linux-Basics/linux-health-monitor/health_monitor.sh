#!/bin/bash

used_ram=$(free -h | grep "Mem" | awk '{print $3}')
disk_usage=$(df -h | grep -w "/" | awk '{print $5}')

echo "Used RAM: $used_ram" >> health_log.txt
echo "Disk Usage: $disk_usage" >> health_log.txt
echo "------------------------" >> health_log.txt
