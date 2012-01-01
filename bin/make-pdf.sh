#!/bin/bash
BINDIR=$(cd `dirname $0` && pwd)

$BINDIR/markdown.pl $1.md > $1.html
pisa --css=default.css $1.html
# htmldoc --links --webpage --footer format=pdf -f $1.pdf $1.html
