#!/bin/bash
BINDIR=$(cd `dirname $0` && pwd)

pandoc -f markdown -t latex --template=template.tex $1.md -o $1.tex
markdown2pdf $1.md --template=template.tex -o $1.pdf

# $BINDIR/Markdown.pl $1.md > $1.html
# pisa -s --encoding=utf8 --css=default.css $1.html
# htmldoc --links --webpage --footer format=pdf -f $1.pdf $1.html
