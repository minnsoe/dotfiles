if [ -f "$HOME/.zinit/bin/zinit.zsh" ]; then
    source "$HOME/.zinit/bin/zinit.zsh"

    zinit wait lucid for \
        "Aloxaf/fzf-tab" \
        "OMZP::ssh-agent" \
        "OMZP::pyenv" \
        "OMZP::direnv" \
        "OMZP::nvm"

    zinit wait lucid for \
        atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
            "zdharma/fast-syntax-highlighting" \
        blockf \
            "zsh-users/zsh-completions" \
        atload"!_zsh_autosuggest_start" \
            "zsh-users/zsh-autosuggestions"
fi
