#!/bin/bash
BINDIR=$(cd `dirname $0` && pwd)

if [ "$1" == "" ]; then
    echo "Usage: $0 base-name"
    echo "Produces base-name.html and base-name.pdf from base-name.md."
    exit 1
fi

$BINDIR/Markdown.pl $1.md > $1.html
pisa -s --encoding=utf8 --css=default.css $1.html
# htmldoc --links --webpage --footer format=pdf -f $1.pdf $1.html
