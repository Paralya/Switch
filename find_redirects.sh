#!/usr/bin/env bash
# Find single-`function`-call functions in the built datapack: a .mcfunction whose only
# non-comment, non-blank line is a `function <target>` call.
#   redir = bare redirect (no args) -> usually removable by pointing callers at <target>
#   args  = single call WITH macro args ({...}) -> parameterized, normally legit (keep)
#
# Usage: ./find_redirects.sh [namespace]      (default: switch)
set -euo pipefail

ns="${1:-switch}"
root="build/datapack/data/${ns}/function"
[ -d "$root" ] || { echo "No built functions at $root (run 'python -m beet build' first)." >&2; exit 1; }

find "$root" -name '*.mcfunction' -print0 | xargs -0 awk -v ns="$ns" '
	BEGINFILE { n = 0; only = "" }
	{ line = $0; gsub(/\r/, "", line) }                 # tolerate CRLF
	line ~ /^[ \t]*#/ { next }                          # skip comments
	line ~ /^[ \t]*$/ { next }                          # skip blanks
	{ n++; only = line }                                # remember the (only) command
	ENDFILE {
		if (n == 1 && only ~ /^function /) {
			id = FILENAME; sub(/.*\/function\//, "", id); sub(/\.mcfunction$/, "", id)
			t = only; sub(/^function /, "", t)
			kind = (t ~ /[ {]/) ? "args " : "redir"
			printf "%-5s  %s:%s  ->  %s\n", kind, ns, id, t
		}
	}
' | sort
