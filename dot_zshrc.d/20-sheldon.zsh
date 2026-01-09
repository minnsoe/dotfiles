# plugin configuration
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=0"

# init autocomplete
autoload -U compinit; compinit

# run sheldon plugin manager
if [ -x "$(command -v sheldon)" ]; then
    eval "$(sheldon source)"
fi

