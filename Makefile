.PHONY: all wc
all: ProtestVerif-paper.pdf ProtestVerif-slides.pdf

SRC=	ProtestVerif-content.tex
SRC+=	libbib.sty
SRC+=	crypto.bib
SRC+=	location.bib
SRC+=	reputation.bib
SRC+=	auth.bib

ProtestVerif-paper.pdf: ProtestVerif-paper.tex ${SRC}
ProtestVerif-paper.pdf: llncs

ProtestVerif-slides.pdf: ProtestVerif-slides.tex ${SRC}

wc: ProtestVerif.tex

INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_LIBBIB=libbib
include ${INCLUDE_LIBBIB}/libbib.mk
