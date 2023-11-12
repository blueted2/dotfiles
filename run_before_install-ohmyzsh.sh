#!/bin/bash
 
export ZDOTDIR="$HOME/.config/zsh" 
export KEEP_ZSHRC="yes" 
export RUNZSH="no" 


if [ ! -d "$ZSH" ]; then
  echo "Installing oh-my-zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  git clone https://github.com/zsh-users/zsh-autosuggestions "$HOME/.config/oh-my-zsh/custom/plugins/zsh-autosuggestions"
fi

