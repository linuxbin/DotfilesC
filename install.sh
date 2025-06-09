#!/bin/bash

# Symlink dotfiles
for file in $(find . -maxdepth 1 -name ".*" -type f -printf "%f\n"); do
    if [ -e ~/$file ]; then
        mv -f ~/$file ~/${file}.dtbak
    fi
    ln -sf "$PWD/$file" ~/$file
done

# Apply Islamic theme immediately
if [[ -f ~/.bashrc ]]; then
    source ~/.bashrc
fi

# Install vim-addon (or fallback for Ubuntu/Debian systems)
if hash vim-addon 2>/dev/null; then
    echo "vim-addon (vim-scripts) installed"
else
    echo "vim-addon (vim-scripts) not found. Installing..."
    if hash apt 2>/dev/null; then
        sudo apt update
        sudo apt install -y vim-scripts
    elif hash yum 2>/dev/null; then
        sudo yum update -y
        sudo yum install -y vim-scripts
    else
        echo "Package manager not recognized. Please install vim-scripts manually."
    fi
fi

echo "🕋 Islamic Dotfiles Installed. Enjoy your spiritual terminal!"
