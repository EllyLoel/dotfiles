#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Color.js convert
# @raycast.mode silent
# @raycast.packageName Color.js convert

# Optional parameters:
# @raycast.icon 🎨
# @raycast.argument1 { "type": "text", "placeholder": "Color" }

# Documentation:
# @raycast.description Convert colors using Color.js
# @raycast.author Elly Loel
# @raycast.authorURL https://ellyloel.com

# Encode the color value for URL
encoded_color=$(printf "%s" "$1" | jq -sRr @uri)

# Open the Color.js converter with the encoded color
open "https://apps.colorjs.io/convert/?color=${encoded_color}&precision=4"
