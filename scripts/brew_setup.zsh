#!/usr/bin/env zsh

echo "\n<<< Administrator Password >>>\n"
sudo -v

echo "\n<<< Keep Alive >>>\n"
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo '\n<<< Starting Homebrew Setup >>>\n'

if exists brew; then
    echo 'Homebrew is already installed!'
else
    echo 'Installing Homebrew...'
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
    echo '\n<<< Running brew bundle >>>\n'
    brew bundle --file=~/.dotfiles/bundles/brew/Brewfile --verbose
fi

echo '\n<<< Homebrew Setup Complete >>>\n'
