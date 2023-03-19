#!/usr/bin/env zsh

echo "\n<<< Starting Node Setup >>>\n"

if exists node; then
  echo "Node already installed!"
else
  echo "Installing Node & NPM with NVM..."
  source ~/.nvm/nvm.sh
  nvm install "lts/*" --reinstall-packages-from="$(nvm current)"
fi

# Install Global NPM Packages
# npm install --global typescript
# npm install --global expo-cli
# npm update

# echo "Global NPM Packages Installed:"
# npm list --global --depth=0

echo "\n<<< Node Setup Complete >>>\n"
