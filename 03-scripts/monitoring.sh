#!/bin/bash
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
MEM=$(free -m | awk '/Mem:/ {printf("%.2f"), $3/$2*100}')

echo "CPU Usage: $CPU%"
echo "Memory Usage: $MEM%"
