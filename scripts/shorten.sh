#!/bin/zsh -i

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Shorten
# @raycast.mode fullOutput
# @raycast.currentDirectoryPath /Users/ellyloel/

# Optional parameters:
# @raycast.icon 🔗
# @raycast.argument1 { "type": "text", "placeholder": "Link" }
# @raycast.argument2 { "type": "text", "placeholder": "Name" }

# Documentation:
# @raycast.author Elly Loel
# @raycast.authorURL https://github.com/EllyLoel

cd /Users/ellyloel/git/elly.to/ && yarn netlify-shortener "$1" "$2"
