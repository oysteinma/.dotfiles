#!/usr/bin/env zsh

echo "\n<<< Starting Node Setup >>>\n"

if exists node; then
  echo "Node already installed!"
else
  echo "Installing Node & NPM with NVM..."
  mkdir ~/.nvm
  source ~/.zshrc
  nvm install node
fi

echo "\n<<< Installing Global NPM Packages... >>>\n"
npm install -g neovim
npm install -g yarn

echo "\n<<< Global NPM Packages Installed >>>\n"
npm list -g --depth=0

echo "\n<<< Node Setup Complete >>>\n"
