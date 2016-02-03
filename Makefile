.PHONY: all wc
all: PPProtestAuth-paper.pdf

PPProtestAuth-paper.pdf: PPProtestAuth-paper.tex
PPProtestAuth-paper.pdf: llncs libbib.sty
PPProtestAuth-paper.pdf: crypto.bib
PPProtestAuth-paper.pdf: location.bib
PPProtestAuth-paper.pdf: reputation.bib
PPProtestAuth-paper.pdf: auth.bib

wc: PPProtestAuth.tex

INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_LIBBIB=libbib
include ${INCLUDE_LIBBIB}/libbib.mk
