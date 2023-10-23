#!/bin/bash

#Shows Systems Users
echo "================================"
echo "System Users:"
cut -d: -f1 /etc/passwd

#Shows Systems Groups
echo "================================"
echo "System Groups:"
cut -d: -f1 /etc/group
echo "================================"

#REGEX is used to find users with admin priveleges in sudoers file
admins=$(sudo grep -P '^(\S+)\s+ALL=\(ALL:ALL\) ALL' /etc/sudoers)

#Stored in admins is used to show the info
if [ -n "$admins" ]; then
  echo "Users with admin privileges:"
  echo "$admins"
else
  echo "Users with admin privileges not found."
fi

echo "================================"
