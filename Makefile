SRC+=	contents.tex
SRC+=	abstract.tex
SRC+=	intro.tex
SRC+=	properties.tex
SRC+=	solution.tex
#SRC+=	AdaptingPROPS.tex
#SRC+=	SystemModel.tex
#SRC+=	primitives.tex
SRC+=	RelatedWork.tex
SRC+=	conclusions.tex
SRC+=	acknowledgements.tex

DEPENDS+=	bibsp.sty
DEPENDS+=	crypto.bib
DEPENDS+=	location.bib
DEPENDS+=	reputation.bib
DEPENDS+=	auth.bib
DEPENDS+=	voting.bib
DEPENDS+=	protests.bib
DEPENDS+=	blockchain.bib


.PHONY: all
all: ProtestVerif-paper.pdf

#ProtestVerif-paper.pdf: lncs
ProtestVerif-paper.pdf: ProtestVerif-paper.tex
ProtestVerif-paper.pdf: preamble.tex preamble-paper.tex
ProtestVerif-paper.pdf: ${SRC} ${DEPENDS}


.PHONY: all
all: ProtestVerif-slides.pdf

ProtestVerif-slides.pdf: ProtestVerif-slides.tex
ProtestVerif-slides.pdf: preamble.tex preamble-slides.tex
ProtestVerif-slides.pdf: ${SRC} ${DEPENDS}


.PHONY: wc todo
wc todo: ${SRC}


INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/doc.mk
INCLUDE_BIBSP=bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
