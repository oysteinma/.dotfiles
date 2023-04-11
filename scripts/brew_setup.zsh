#!/usr/bin/env zsh

echo '\n<<< Starting Homebrew Setup >>>\n'

if exists brew; then
    echo 'Homebrew is already installed!'
else
    echo 'Installing Homebrew...'
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo 'Running brew bundle'
brew bundle --file=~/.dotfiles/brew/Brewfile --verbose

echo '\n<<< Homebrew Setup Complete >>>\n'