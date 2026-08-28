#!/bin/sh

# Starting from a completely fresh macOS Device. (NON-MDM)

# PHASE 0: Allow Remote access

# PHASE 0.1: Initial User (ON-DEVICE, NON-TERMINAL)
# Go through the mandatory user setup: 
#  - No sign-in needed. None of the default prompts needed to answered in the affirmative. Internet Access is needed. 


# PHASE 0.2: Terminal - Full Disk Access (ON-DEVICE, NON-TERMINAL)
# Give Terminal Full Disk Access (This allows the rest of the setup to be done through a script)
# Go System Settings > Privacy & Security > Full Disk Access.
# Terminal can be found in /Applications/Utilities/Terminal 

# PHASE 0.3 (ON-DEVICE, TERMINAL)
# Allow remote login - Requires Full Disk Access privileges
sudo systemsetup -setremotelogin on

# PHASE 0: COMPLETE - SSH is now possible. # macOS can now be managed by Remote. 

# PHASE 1: Install Command Line Tools (ON-DEVICE, or REMOTE)
# Continued minimal setup for self-manage node

# OPTIONAL: Updating macOS to the latest version MAY be necessary to use the latest version of the Command Line Tools
sudo softwareupdate --install -r -R

# Download

# Copy DMG to device using SCP

# Unpack

dmg_filename="Command_Line_Tools_26.6_Apple_silicon.dmg"
dmg_mountpoint="$(pwd)/volume"

hdiutil attach "./$dmg_filename" -mountpoint "$dmg_mountpoint"

# ctl_location="/Library/Developer/CommandLineTools"

# sudo mkdir - 

dmg_mountpoint="$(pwd)/volume"

pkg_filename="Command Line Tools.pkg"

sudo /usr/sbin/installer -verbose -pkg "$dmg_mountpoint/$pkg_filename" -target /

# Python should be available at this point.

# Check pip is available
python3 -m pip -V

# Install ansible-core - Apple uses and old version of Python 3.9.x This is the latest version of Ansible that will work
python3 -m pip install --user ansible-core==2.15.3

# CommandLineTools - Search for Latest version
# https://developer.apple.com/download/all/?q=Command%20Line%20Tools

# Download
curl -L "https://download.developer.apple.com/Developer_Tools/Command_Line_Tools_26.6/Command_Line_Tools_26.6_Apple_silicon.dmg" -o command-line-tools.dmg