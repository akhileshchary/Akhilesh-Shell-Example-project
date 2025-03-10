#!/bin/bash

# Linux System Monitor Script

echo "=========================="
echo "  System Resource Monitor"
echo "=========================="

# Display CPU usage
echo -e "\n- CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print "Usage: " $2 + $4 "%"}'

# Display Memory usage
echo -e "\n- Memory Usage:"
free -h | awk 'NR==2{printf "Used: %s / Total: %s\n", $3, $2}'

# Display Disk usage
echo -e "\n- Disk Usage:"
df -h --output=source,pcent | grep '^/dev/'

# Display Network Statistics
echo -e "\n- Network Connections:"
ss -tup

echo -e "\n\[OK] Monitoring Complete!"
