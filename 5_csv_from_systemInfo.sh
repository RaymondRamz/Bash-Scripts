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

#shows information and generates a csv file with the info
echo "=================================================================================================" > system_info.csv
echo "CPU Information: " >> system_info.csv
echo "$cpu_info" >> system_info.csv
echo "=================================================================================================" >> system_info.csv
echo "Memory Information: " >> system_info.csv
echo "$memory_info" >> system_info.csv
echo "=================================================================================================" >> system_info.csv
echo "Number of filesystems on linux system: " >> system_info.csv
echo "$num_files_system" >> system_info.csv
echo  >> system_info.csv
echo "Filesystems on linux system: " >> system_info.csv
echo "$files_system" >> system_info.csv
echo "=================================================================================================" >> system_info.csv
echo "Total storage amount: " >> system_info.csv
echo "$total_storage" >> system_info.csv
echo "=================================================================================================" >> system_info.csv
