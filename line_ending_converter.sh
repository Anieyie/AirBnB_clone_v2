#!/bin/bash

convert_to_unix() {
    find . -type f -not -path "*/\.git/*" -exec dos2unix {} \;
}

case "$1" in
    to_unix)
        convert_to_unix
        ;;
    *)
        echo "Usage: $0 {to_unix}"
        exit 1
esac
