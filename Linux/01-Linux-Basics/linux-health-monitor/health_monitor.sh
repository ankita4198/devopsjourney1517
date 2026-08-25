#!/bin/bash

used_ram=$(free -h | grep "Mem" | awk '{print $3}')
disk_usage=$(df -h | grep -w "/" | awk '{print $5}')
cpu_usage=$(top -bn1 | grep "Cpu(s)")

echo "Used RAM: $used_ram" >> /root/health_log.txt
echo "Disk Usage: $disk_usage" >> /root/health_log.txt
echo "CPU Usage: $cpu_usage" >> /root/health_log.txt
echo "------------------------" >> /root/health_log.txt
