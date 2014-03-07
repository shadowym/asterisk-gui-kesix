#!/bin/sh
#
# Problem: Messy config files
#
# Solution: sed
#
# Steps
# 1. Delete all blank lines
# 2. Add line before any line with a [
# 3. Optionally remove all comments
#
# Intention: The intention is to share a method for administrators to clean
#   the configs if they choose to read them. These can be applied as a script
#   or copy and paste.
#



cd /etc/asterisk
sed -i '/^$/d' *.conf
sed -i '/^\[/{x;p;x;}' *.conf

# Optionally remove comments
#sed -i '/^\#/d' *.conf
#sed -i '/^\;/d' *.conf