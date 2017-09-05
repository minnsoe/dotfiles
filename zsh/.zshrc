DOTFILES_BASE=$HOME/dotfiles

source $HOME/.zsh/antigen/antigen.zsh

antigen use oh-my-zsh

## Load macOS specific bundles
if [[ $OSTYPE == darwin* ]]; then
  antigen bundle osx
fi

## Batch load bundles
antigen bundles <<EOBUNDLES
  git
  zsh-users/zsh-syntax-highlighting
EOBUNDLES

## Must be run after loading the bundles to finalise
antigen apply
