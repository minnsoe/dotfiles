if [ -x "$(command -v go)" ]; then
    export GOPATH="${HOME}/go"
    export PATH="${PATH}:${GOPATH}/bin"
fi
