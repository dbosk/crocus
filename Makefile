SRC+=	contents.tex
SRC+=	abstract.tex
SRC+=	DataAuthenticity.tex
SRC+=	Verification.tex
SRC+=	intro.tex
SRC+=	AdaptingPROPS.tex
SRC+=	SystemModel.tex
SRC+=	primitives.tex

DEPENDS+=	bibsp.sty
DEPENDS+=	crypto.bib
DEPENDS+=	location.bib
DEPENDS+=	reputation.bib
DEPENDS+=	auth.bib
DEPENDS+=	voting.bib
DEPENDS+=	protests.bib


.PHONY: all
all: ProtestVerif-paper.pdf

#ProtestVerif-paper.pdf: lncs
ProtestVerif-paper.pdf: ProtestVerif-paper.tex
ProtestVerif-paper.pdf: preamble.tex
ProtestVerif-paper.pdf: ${SRC} ${DEPENDS}


.PHONY: all
all: ProtestVerif-slides.pdf

ProtestVerif-slides.pdf: ProtestVerif-slides.tex
ProtestVerif-slides.pdf: preamble.tex
ProtestVerif-slides.pdf: ${SRC} ${DEPENDS}


.PHONY: wc
wc: ${SRC}


INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_LIBBIB=bibsp
include ${INCLUDE_LIBBIB}/bibsp.mk
