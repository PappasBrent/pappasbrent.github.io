TSVS	=	$(wildcard tsv/*.tsv)
TYPS	=	$(TSVS:tsv/%.tsv=typ/%.typ)
HTMLS	=	$(TSVS:tsv/%.tsv=%.html)
CV	=	assets/pdf/cv.pdf

.PHONY: all cv

all: $(CV) $(HTMLS)

cv: $(CV)

$(HTMLS):	%.html		: tsv/%.tsv	scripts/export-%.sh
	bash scripts/export-${@:%.html=%.sh} html > "$@"


$(TYPS):	typ/%.typ	: tsv/%.tsv	scripts/export-%.sh
	bash scripts/export-${@:typ/%.typ=%.sh} typst > "$@" 

$(CV):	$(TYPS) typ/cv.typ
	typst compile typ/cv.typ $@
