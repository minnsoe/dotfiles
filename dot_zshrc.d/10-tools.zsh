# Tooling manager shim
if [ -x "$(command -v mise)" ]; then
    eval "$(mise activate zsh)"
fi

# Set up fzf key bindings and fuzzy completion
if [ -x "$(command -v fzf)" ]; then
    source <(fzf --zsh)
fi
