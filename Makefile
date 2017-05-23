.PHONY: all wc
all: ProtestVerif-paper.pdf

SRC+=	content.tex

DEPENDS+=	bibsp.sty
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
INCLUDE_LIBBIB=bibsp
include ${INCLUDE_LIBBIB}/bibsp.mk
