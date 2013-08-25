#!/bin/bash

# ~/.osx — http://mths.be/osx

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# General UI/UX                                                               #
###############################################################################

# Set computer name (as done via System Preferences → Sharing)
sudo scutil --set ComputerName "calculon"
sudo scutil --set HostName "calculon"
sudo scutil --set LocalHostName "calculon"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "calculon"

# Use all F1, F2, etc. keys as standard function keys (Requires logout)
defaults write -g com.apple.keyboard.fnState -boolean true

# Menu bar: disable transparency
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false

# TODO Dont work
# Menu bar: show remaining battery time (on pre-10.8); hide percentage
defaults write com.apple.menuextra.battery ShowPercent -string "NO"
defaults write com.apple.menuextra.battery ShowTime -string "YES"

# TODO Dont work
# Menu bar: hide the useless Time Machine and Volume icons
defaults write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" "/System/Library/CoreServices/Menu Extras/AirPort.menu" "/System/Library/CoreServices/Menu Extras/Battery.menu" "/System/Library/CoreServices/Menu Extras/Clock.menu"

# Disable opening and closing window animations
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

###############################################################################
# Dock
###############################################################################

# Remove the auto-hiding Dock delay
defaults write com.apple.Dock autohide-delay -float 0
# Remove the animation when hiding/showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Position the dock on the right side of the screen
defaults write com.apple.dock orientation -string right

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Minimize windows using (scale/genie) Effect
defaults write com.apple.dock mineffect -string scale

# Wipe all (default) app icons from the Dock
defaults write com.apple.dock persistent-apps -array  

# Make Dock icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

# Minimize windows into application icon
defaults write com.apple.dock minimize-to-application -bool true

# Disable indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool false

###############################################################################
# Mouse
###############################################################################

# TODO Might not work
# Enable right click on the  Multitouch mouse
#defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseButtonMode -string TwoButton
