.PHONY: all wc
all: ProtestVerif-paper.pdf

SRC+=	content.tex

DEPENDS+=	libbib.sty
DEPENDS+=	crypto.bib
DEPENDS+=	location.bib
DEPENDS+=	reputation.bib
DEPENDS+=	auth.bib

ProtestVerif-paper.pdf: ProtestVerif-paper.tex ${SRC} ${DEPENDS}
ProtestVerif-paper.pdf: llncs

ProtestVerif-slides.pdf: ProtestVerif-slides.tex ${SRC} ${DEPENDS}

wc: ProtestVerif-paper.tex


INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_LIBBIB=libbib
include ${INCLUDE_LIBBIB}/libbib.mk
