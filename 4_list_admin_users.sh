#!/bin/bash
echo "================================"
echo "System Users:"
cut -d: -f1 /etc/passwd

echo "================================"
echo "System Groups:"
cut -d: -f1 /etc/group
echo "================================"

admins=$(sudo grep -P '^(\S+)\s+ALL=\(ALL:ALL\) ALL' /etc/sudoers)
la
if [ -n "$admins" ]; then
  echo "Users with admin privileges:"
  echo "$admins"
else
  echo "Users with admin privileges not found."
fi

echo "================================"
