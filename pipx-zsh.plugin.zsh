#!/usr/bin/env zsh

# Ensure pipx binaries are on the path
export -U PATH="$PATH:$HOME/.local/bin"

if ! (( $+commands[pipx] )); then
    echo 'pipx command not found: please install via https://github.com/pypa/pipx'
else
    # pipx completions needs argcomplete
    if ! (( $+commands[register-python-argcomplete] )); then
        pipx install argcomplete
    fi

    eval "$(register-python-argcomplete pipx)"
fi
