version = $(shell git describe --always --dirty)

build : constitution.pdf bylaws.pdf

build-tagged : constitution-$(version).pdf bylaws-$(version).pdf

%.pdf %-$(version).pdf : student_government_%.md
	pandoc -f gfm $< -t latex -o $@ --toc

clean:
	rm -f *.pdf
