#!/usr/bin/env bash

for f in $(dirname $0)/commands/*.sh; do source $f; done

if [ ! -z "$(ls -A /content)" ]; then
    echo "Content to extract:"
    ls -lah /content
    cmd_extract
else
    echo 'Please mount /content with the .mbox files'
fi
