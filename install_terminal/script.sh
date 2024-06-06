#!/bin/bash

# Update package list
sudo apt update

# Install Zsh
sudo apt install -y zsh

# Verify Zsh installation
if command -v zsh >/dev/null 2>&1; then
    echo "Zsh installed successfully."
else
    echo "Zsh installation failed."
    exit 1
fi

# Change default shell to Zsh
chsh -s $(which zsh)

# Install curl if not already installed
sudo apt install -y curl

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Verify Oh My Zsh installation
if [ -d "$HOME/.oh-my-zsh" ]; then
    echo "Oh My Zsh installed successfully."
else
    echo "Oh My Zsh installation failed."
    exit 1
fi

# Install Powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Verify Powerlevel10k installation
if [ -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k" ]; then
    echo "Powerlevel10k installed successfully."
else
    echo "Powerlevel10k installation failed."
    exit 1
fi

# Copy .oh-my-zsh folder, .p10k.zsh, and .zshrc to the user's home directory
cp -r .oh-my-zsh $HOME/
cp .p10k.zsh $HOME/
cp .zshrc $HOME/

# Apply changes to .zshrc
source ~/.zshrc

echo "Zsh, Oh My Zsh, and Powerlevel10k installation completed. Please restart your terminal."

