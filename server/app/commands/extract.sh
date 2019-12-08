#!/usr/bin/env bash

function cmd_extract()
{
    echo Extracting content of /content
    cd /content
    for f in /content/*.mbox; do
        echo extracting $f
        dirname=$(echo $f | sed 's#\.mbox$##g')
        cat "$f" | hypermail -i -d $dirname
    done

}
