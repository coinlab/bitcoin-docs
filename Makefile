SOURCES = a-bitcoin-primer.md
DOCS=$(SOURCES:.md=.html) $(SOURCES:.md=.pdf) $(SOURCES:.md=.epub)
BINDIR=bin

all: $(DOCS)

clean:
	rm -f $(DOCS)

%.html: %.md
	$(BINDIR)/Markdown.pl $< > $@

%.pdf: %.md
	markdown2pdf $< --template=template.tex -o $@

%.tex: %.html
	pandoc -f html -t latex --template=template.tex $< -o $@

%.epub: %.html
	pandoc -f html -t epub --template=template.tex $< -o $@
