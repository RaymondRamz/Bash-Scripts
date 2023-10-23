#!/bin/bash

#function to check if nmap is installed
check_nmap(){
    #-q => query flag rpm
    if rpm -q nmap > /dev/null 2>&1; then
        echo "Nmap is installed"
    else
        echo "Nmap is not installed"
    fi
}

#this function determines the linux distribution
distro_info(){
    distro_info=$(head -n 1 /etc/os-release 2>/dev/null)
    if [ -n "$distro_info" ]; then
        echo "The distro is not Red Hat or similar. Distribution Information:"
        echo "$distro_info"
    else
        echo "Linux distribution cannot be determined"
    fi
}

#Main code
if [ -f /etc/redhat-release ]; then
    echo "Distro is Red Hat or Similar"
    check_nmap
else
    distro_info
fi


    