#!/bin/bash

# Function to check if a package exists in the package database
package_exists() {
    pacman -Qq "$1" &>/dev/null
}

# Function to install a package if it exists
install_package_if_exists() {
    if package_exists "$1"; then
        sudo pacman -S --noconfirm "$1"
    else
        echo "Package $1 not found in package database. Skipping..."
    fi
}

# Install necessary packages
install_package_if_exists alacritty
install_package_if_exists bat
install_package_if_exists colorls

