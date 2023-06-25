#!/usr/bin/env zsh

echo "\n<<< Starting macOS Setup >>>\n"

osascript -e 'tell application "System Preferences" to quit'

# GENERAL SETTINGS

echo "\n<<< General Settings >>>\n"

echo "Disable the sound effects on boot"
sudo nvram SystemAudioVolume=" "

echo "Setting wallpaper"
wallpaper="wallpaper.png"
osascript -e "tell application \"Finder\" to set desktop picture to \"${HOME}/.dotfiles/images/${wallpaper}\" as POSIX file"

# FINDER

echo "\n<<< Finder Settings >>>\n"

echo "Be able to quit Finder"
defaults write com.apple.finder QuitMenuItem -bool true

echo "Disable the warning when changing a file extension"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

echo "Show all filename extensions"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo "Show status bar in Finder"
defaults write com.apple.finder ShowStatusBar -bool true

echo "Show path bar in Finder"
defaults write com.apple.finder ShowPathbar -bool true

echo "Display full POSIX path as Finder window title"
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

echo "When performing a search, search the current folder by default"
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

echo "Disable the warning before emptying the Trash"
defaults write com.apple.finder WarnOnEmptyTrash -bool false

echo "Empty Trash securely by default"
defaults write com.apple.finder FXRemoveOldTrashItems -bool true

echo "Use list view in all Finder windows by default"
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

echo "Disable window animations and Get Info animations"
defaults write com.apple.finder DisableAllAnimations -bool true

echo "Keep folders on top when sorting by name"
defaults write com.apple.finder _FXSortFoldersFirst -bool true

echo "Set user home as the default location for new Finder windows"
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"

echo "Don't show icons for hard drives, servers, and removable media on the desktop"
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false

echo "Open folders in tabs instead of new windows"
defaults write com.apple.finder FinderSpawnTab -bool true

# DOCK

echo "\n<<< Dock Settings >>>\n"

echo "No delay when hiding/showing the Dock"
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -int 0

echo "Latency when dragging windows to the edge of the screen"
defaults write com.apple.dock workspaces-edge-delay -float 60

echo "Bottom left hot screen corner → Show Desktop"
defaults write com.apple.dock wvous-bl-corner -int 4
defaults write com.apple.dock wvous-bl-modifier -int 0

killall Finder
killall Dock

echo "\n<<< macOS Setup Complete. Restart might be necessary. >>>\n"
