#!/bin/bash

# Function to print messages in bright color
print_success() {
    echo -e "\e[1;32m$1\e[0m"
}

# Update package list
sudo apt update

# Install Zsh
sudo apt install -y zsh

# Verify Zsh installation
if command -v zsh >/dev/null 2>&1; then
    print_success "Zsh installed successfully."
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
    print_success "Oh My Zsh installed successfully."
else
    echo "Oh My Zsh installation failed."
    exit 1
fi

# Install Powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Verify Powerlevel10k installation
if [ -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k" ]; then
    print_success "Powerlevel10k installed successfully."
else
    echo "Powerlevel10k installation failed."
    exit 1
fi

# Install zsh-syntax-highlighting plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
print_success "zsh-syntax-highlighting plugin installed successfully."

# Install zsh-autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
print_success "zsh-autosuggestions plugin installed successfully."

# Copy .oh-my-zsh folder, .p10k.zsh, and .zshrc to the user's home directory
cp -r .oh-my-zsh $HOME/
print_success ".oh-my-zsh folder copied to home directory."

cp .p10k.zsh $HOME/
print_success ".p10k.zsh file copied to home directory."

cp .zshrc $HOME/
print_success ".zshrc file copied to home directory."

# Apply changes to .zshrc
source ~/.zshrc

print_success "Zsh, Oh My Zsh, Powerlevel10k, and plugins installation completed. Please restart your terminal."

