DOTFILES_BASE=$HOME/dotfiles

autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
    compinit
done
compinit -C

# Load each zsh file if .zshrc.d folder exists
if [ -d $HOME/.zshrc.d ]; then
  for file in $HOME/.zshrc.d/*.zsh; do
    source $file
  done
fi

# load starship prompt if found on PATH
# starship must be loaded last
if command -v starship &> /dev/null; then
    eval "$(starship init zsh)"
fi
