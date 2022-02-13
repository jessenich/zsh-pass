

#!/usr/bin/env zsh

if ! builtin command -v pass >/dev/null; then
    return 0;
fi

main() {
    set -o errexit;
    set -o pipefail;
    set -o nounset;

    local -r __dirname="$(cd "$(dirname "${(%):-%x}")" && pwd)";
    local -r __filename="${__dirname}/$(basename "${(%):-%x}")";

    compdef _pass pass;
    zstyle ':completion::complete:pass::' prefix "$HOME/.password-store/";

    exit 0;
};

main "$@";
