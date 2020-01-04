source $HOME/.zsh/antigen/antigen.zsh

antigen use oh-my-zsh
antigen theme simple

## Load macOS specific bundles
if [[ $OSTYPE == darwin* ]]; then
  antigen bundle osx
fi

## Batch load bundles
antigen bundles <<EOBUNDLES
  zsh-users/zsh-completions
  zsh-users/zsh-syntax-highlighting
  zsh-users/zsh-autosuggestions
  ssh-agent
  git
  pyenv
  nvm
EOBUNDLES

## Must be run after loading the bundles to finalise
antigen apply
