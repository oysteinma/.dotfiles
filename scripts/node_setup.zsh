#!/usr/bin/env zsh

echo "\n<<< Starting Node Setup >>>\n"

if exists node; then
  echo "Node already installed!"
else
  echo "Installing Node & NPM with NVM..."
  source ~/.nvm/nvm.sh
  nvm install "lts/*" --reinstall-packages-from="$(nvm current)"
fi

echo 'Install Global NPM Packages'
npm install -g neovim
npm install -g yarn

echo "Global NPM Packages Installed:"
npm list -g --depth=0

echo "\n<<< Node Setup Complete >>>\n"
