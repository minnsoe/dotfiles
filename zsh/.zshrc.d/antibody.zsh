ANTIBODY_STATIC_PATH="${HOME}/.zshrc.d/zsh_plugins.zsh"
ZSH_PLUGINS_FILE="${HOME}/.zsh_plugins.txt"

function antibody_static() {
    antibody bundle < ${ZSH_PLUGINS_FILE} > ${ANTIBODY_STATIC_PATH}
    source ${ANTIBODY_STATIC_PATH}
    echo "$(tput bold)antibody_static:$(tput sgr0) generated and loaded static plugins"
}

if command -v antibody &> /dev/null; then
    if [ ! -f  "${ANTIBODY_STATIC_PATH}" ]; then
        antibody_static
    fi
else
    unset antibody_static
fi
