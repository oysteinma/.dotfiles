#!/usr/bin/env zsh

# TODO: Set up proper settings

echo "\n<<< Starting macOS Setup >>>\n"

osascript -e 'tell application "System Preferences" to quit'

# System Preferences > Dock

echo "No delay when hiding/showing the Dock"
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -int 0

killall Finder
killall Dock

echo "\n<<< macOS Setup Complete. Restart might be necessary. >>>\n"
