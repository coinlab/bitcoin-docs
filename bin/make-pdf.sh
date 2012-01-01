#!/bin/bash
BINDIR=$(cd `dirname $0` && pwd)

cat format.html > $1.html
$BINDIR/markdown.pl $1.md >> $1.html
pisa $1.html
# htmldoc --links --webpage --footer format=pdf -f $1.pdf $1.html
