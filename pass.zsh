#!/usr/bin/env zsh

# shellcheck disable=SC2312,SC2296,SC3043,SC2155,SC2250

if ! builtin command -v pass >/dev/null; then
    return 0;
fi

local -r __dirname="$(cd "$(dirname "${(%):-%x}")" && pwd)";
compdef "$__dirname/_pass" pass;
