#!/usr/bin/env zsh

echo '\n<<< Starting Pip Setup >>>\n'

if exists pip3; then
    echo '\n<<< Running pip bundle >>>\n'
    pip3 install -r ~/.dotfiles/bundles/pip/requirements.txt
fi

echo '\n<<< Pip Setup Complete >>>\n'
