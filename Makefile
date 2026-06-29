SHELL			=	/usr/bin/bash
TYPS			=	$(wildcard typ/includes/*.typ)
HTMLS			=	$(TYPS:typ/includes/%.typ=_includes/%.html)
CV			=	assets/pdf/cv.pdf
STATEMENTS		=	teaching research
STATEMENT_TYPS		=	$(STATEMENTS:%=typ/%-statement.typ)
STATEMENT_PDFS		=	$(STATEMENTS:%=assets/pdf/%-statement.pdf)
WATCH_RULES		=	$(STATEMENTS:%=watch-%)

.PHONY: all cv bibformat $(WATCH_RULES)

all: $(CV) $(HTMLS) $(STATEMENT_PDFS)

$(WATCH_RULES):
	open $(@:watch-%=assets/pdf/%-statement.pdf)
	typst watch	$(@:watch-%=typ/%-statement.typ)	\
			$(@:watch-%=assets/pdf/%-statement.pdf)

cv: $(CV)

$(HTMLS):	_includes/%.html		: typ/includes/%.typ
	typst compile --features html -f html $< - | tail -n+8 | head -n-2 > $@
	sed -i "s/<table>/<table class='dated-table'>/" $@

$(CV):	typ/cv.typ $(TYPS)
	typst compile $< $@

$(STATEMENT_PDFS):	assets/pdf/%-statement.pdf: typ/%-statement.typ typ/references.bib
	typst compile $< $@

bibformat:	typ/references.bib
	bibtool -s $< | bibclean -align-equals > temp.bib 2>&1
	mv temp.bib $<
