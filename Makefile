.PHONY: build docs

b build d docs:
	asciidoctor -a lang=es -b docbook book.adoc
	asciidoctor -a lang=es book.adoc
	mkdir -p docs
	mv book.html docs/index.html
	mv book.xml docs/book.xml
