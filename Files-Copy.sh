#!/bin/bash

# Create a directory named 'softwares' in the /Volumes directory
mkdir /Volumes/softwares

# Mount the smbfs share at the specified address on the '/Volumes/softwares' directory,
# using the provided username 'admin', password 'Password' and IP '192.168.3.124'
# 192.168.3.124/Mac is the shared path with folder, softwares must be present in the folder
mount_smbfs "//192.168.3.124;admin:Password@192.168.3.124/Mac" /Volumes/softwares

# Copy the contents of the '/Volumes/softwares/' directory to the current user's desktop; dmg files, app files and zip's are copied.
cp -R "/Volumes/softwares/" "/Users/$(logname)/Desktop/"

# Detach the '/Volumes/softwares' volume
hdiutil detach "/Volumes/softwares"
