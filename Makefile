SOURCES = $(wildcard *.md)
DOCS=$(SOURCES:.md=.html) $(SOURCES:.md=.pdf) $(SOURCES:.md=.epub)

all: $(DOCS)

clean:
	rm $(DOCS)

.md.html:
	$BINDIR/Markdown.pl $< > $@

.md.pdf:
	pisa --encoding=utf8 --css=default.css $<
