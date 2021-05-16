if [ -f "$HOME/.zinit/bin/zinit.zsh" ]; then
    source "$HOME/.zinit/bin/zinit.zsh"

    ZSH_AUTOSUGGEST_MANUAL_REBIND="true"
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=0"

    zinit wait lucid for \
        "OMZP::ssh-agent" \
        "OMZP::pyenv" \
        "OMZP::direnv" \
        "OMZP::nvm" \
        atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
            "Aloxaf/fzf-tab" \
            "zdharma/fast-syntax-highlighting" \
        blockf \
            "zsh-users/zsh-completions" \
        atload"!_zsh_autosuggest_start" \
            "zsh-users/zsh-autosuggestions"

    autoload -Uz compinit
    compinit
    zinit cdreplay -q
fi
