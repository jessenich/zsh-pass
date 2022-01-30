

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

  source <(cat "$__dirname/_pass");

  exit 0;
};

main "$@";
