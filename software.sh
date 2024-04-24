#!/bin/bash

# List of software to install with corresponding emojis
software_list=(
    "standard-notes 📝"
    "spotify 🎵"
    "notion 📑"
    "arc 🌈"
    "vlc 📺"
    "visual-studio-code 💻"
    "iterm2 🖥️"
    "docker 🐳"
    "zoom 🔍"
    "1password 🔐"
    "nordvpn 🛡️"
    "setapp 📦"
)

# Iterate through the software list
for software_info in "${software_list[@]}"; do
    software_name="${software_info%% *}"
    emoji="${software_info#* }"
    # Check if the software is installed
    if brew list --cask "$software_name" >/dev/null 2>&1; then
        echo "$emoji $software_name is already installed."
    else
        # If not installed, install the software
        echo "Installing $emoji $software_name..."
        brew install --cask "$software_name"
        echo "$emoji $software_name installed successfully."
    fi
done

