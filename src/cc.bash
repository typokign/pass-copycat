#!/usr/bin/env bash

path="$1"
passfile="$PREFIX/$path.gpg"
check_sneaky_paths "$path"

set -euo pipefail

if [[ -f $passfile ]]; then
	contents=$($GPG -d "${GPG_OPTS[@]}" "$passfile")
	echo "$contents" | tail -n +2
	password=$(echo "$contents" | head -n 1)
	clip "$password" "$path"
elif [[ -z $path ]]; then
	die ""
else
	die "Error: $path is not in the password store."
fi

