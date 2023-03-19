#!/usr/bin/env zsh

echo '\n<<< Starting Xcode Command Line Tools Setup >>>\n'

if exists gcc; then
    echo 'Xcode Command Line Tools is already installed!'
else
    echo 'Installing Xcode Command Line Tools..'
    xcode-select --install
fi

echo '\n<<< Xcode Command Line Tools Setup Complete >>>\n'
