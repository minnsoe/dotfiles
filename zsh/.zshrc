DOTFILES_BASE=$HOME/dotfiles

## Load each zsh file if .zshrc.d folder exists
if [ -d $HOME/.zshrc.d ]; then
  for file in $HOME/.zshrc.d/*.zsh; do
    source $file
  done
fi
