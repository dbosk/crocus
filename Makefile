.PHONY: all wc
all: PPProtestAuth-paper.pdf PPProtestAuth-slides.pdf

SRC=	PPProtestAuth-content.tex
SRC+=	libbib.sty
SRC+=	crypto.bib
SRC+=	location.bib
SRC+=	reputation.bib
SRC+=	auth.bib

PPProtestAuth-paper.pdf: PPProtestAuth-paper.tex ${SRC}
PPProtestAuth-paper.pdf: llncs

PPProtestAuth-slides.pdf: PPProtestAuth-slides.tex ${SRC}

wc: PPProtestAuth.tex

INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_LIBBIB=libbib
include ${INCLUDE_LIBBIB}/libbib.mk
