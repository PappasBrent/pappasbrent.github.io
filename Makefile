SHELL			=	/usr/bin/bash
TYPS			=	$(wildcard typ/includes/*.typ)
HTMLS			=	$(TYPS:typ/includes/%.typ=_includes/%.html)
CV			=	assets/pdf/cv.pdf
TEACHING_PHILOSOPHY	=	assets/pdf/teaching-philosophy.pdf

.PHONY: all cv

all: $(CV) $(HTMLS) $(TEACHING_PHILOSOPHY)

cv: $(CV)

$(HTMLS):	_includes/%.html		: typ/includes/%.typ
	typst compile --features html -f html $< - | tail -n+8 | head -n-2 > $@
	sed -i "s/<table>/<table class='dated-table'>/" $@

$(CV):	$(TYPS) typ/cv.typ
	typst compile $< $@

$(TEACHING_PHILOSOPHY):	typ/teaching-philosophy.typ typ/references.bib
	typst compile $< $@
