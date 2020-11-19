#!/bin/bash

BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

function require {
    local lib

    for lib in "$@"; do
        source "$BASE_DIR/$lib.sh"
    done
}
