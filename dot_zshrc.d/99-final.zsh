# Load starship prompt if found on PATH; starship must be loaded last.
if command -v starship &> /dev/null; then
    eval "$(starship init zsh)"
fi
