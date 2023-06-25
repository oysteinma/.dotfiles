#!/usr/bin/env zsh

if exists npm; then
  echo "\n<<< Installing Global NPM Packages... >>>\n"
  npm install -g parcel-bundler

  echo "\n<<< Global NPM Packages Installed >>>\n"
  npm list -g --depth=0
fi

