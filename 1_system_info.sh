#!/bin/bash

#obtains cpu information
cpu_info=$(lscpu)
#obtains memory information
memory_info=$(free -h)
#obtains information of how many filesystem there are
num_files_system=$(sudo df -hT | tail -n +2 | wc -l)
#obtains filesystem information, show human-readable info and print file system type
files_system=$(sudo df -hT)
#obtains storage information
total_storage=$(sudo df -hT --total | grep -E "Filesystem|total")

#shows information
echo "================================================================================================="
echo "CPU Information: "
echo "$cpu_info"
echo "================================================================================================="
echo "Memory Information: "
echo "$memory_info"
echo "================================================================================================="
echo "Number of filesystems on linux system: "
echo "$num_files_system"
echo 
echo "Filesystems on linux system: "
echo "$files_system"
echo "================================================================================================="
echo "Total storage amount: "
echo "$total_storage"
echo "================================================================================================="