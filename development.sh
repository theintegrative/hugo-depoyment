#! /bin/bash

# Start your browser
brave-browser http://localhost:1313/

# With flatpak start obsidian and open the vault "en" 
# that is the content folder through the obsidian URI in the background
flatpak run md.obsidian.Obsidian obsidian://open?vault=en &

# Starting development server with hugo doks theme for more https://getdoks.org/ 
# For hugo use: hugo server
npm run start
