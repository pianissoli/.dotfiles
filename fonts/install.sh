#!/usr/bin/bash

FONT_DIR='/usr/local/share/fonts'

mkdir -p $FONT_DIR

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

for item in "$SCRIPT_DIR"/*
do
    [ -d "$item" ] || continue
    cp -r $item $FONT_DIR
done
