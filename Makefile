NAMES	=	advising publications teaching
TSVS	=	$(NAMES:%=tsv/%.tsv)
TYPS	=	$(NAMES:%=typ/%.typ)
HTMLS	=	$(NAMES:%=%.html)
CV	=	assets/pdf/cv.pdf

.PHONY: all

all: $(CV) $(HTMLS)

$(HTMLS):	%.html		: tsv/%.tsv	scripts/export-%.sh
	bash scripts/export-${@:%.html=%.sh} html > "$@"


$(TYPS):	typ/%.typ	: tsv/%.tsv	scripts/export-%.sh
	bash scripts/export-${@:typ/%.typ=%.sh} typst > "$@" 

$(CV):	$(TYPS)
	typst compile typ/cv.typ $@
