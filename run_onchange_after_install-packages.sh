#!/bin/bash
 
GIT="/usr/bin/git" 
if [ ! -f "$GIT" ]; then
    echo "Installing git..."
    apt update
    sudo apt install git
fi

RUSTUP="$HOME/.cargo/bin/rustup"
if [ ! -f "$RUSTUP" ]; then
    echo "Installing rustup..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

ZSH="/usr/bin/zsh"
if [ ! -f "$ZSH" ]; then
    echo "Installing zsh..."
    sudo apt install zsh
fi

# OMZ="$HOME/.config/oh-my-zsh"
# if [ ! -d "$OMZ" ]; then
#     echo "Installing oh-my-zsh..."
#     ZSH="$OMZ" sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#     git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# fi

TMUX="/usr/bin/tmux"
if [ ! -f "$TMUX" ]; then
    echo "Installing tmux..."
    sudo apt install tmux
fi

ZELLIJ="$HOME/.cargo/bin/zellij"
if [ ! -f "$ZELLIJ" ]; then
    echo "Installing zellij..."
    cargo install zellij
fi

    
ALACRITTY="$HOME/.cargo/bin/alacritty"
if [ ! -f "$ALACRITTY" ]; then
    echo "Installing alacritty..."
    apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
    cargo install alacritty
fi
