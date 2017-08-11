SRC+=	contents.tex
SRC+=	abstract.tex
SRC+=	intro.tex
SRC+=	properties.tex
SRC+=	design.tex
#SRC+=	AdaptingPROPS.tex
#SRC+=	SystemModel.tex
SRC+=	RelatedWork.tex
SRC+=	conclusions.tex
SRC+=	acknowledgements.tex

DEPENDS+=	bibsp.sty
DEPENDS+=	bibsp/crypto.bib
DEPENDS+=	bibsp/location.bib
DEPENDS+=	bibsp/reputation.bib
DEPENDS+=	bibsp/auth.bib
DEPENDS+=	bibsp/voting.bib
DEPENDS+=	bibsp/protests.bib
DEPENDS+=	bibsp/blockchain.bib
DEPENDS+=	bibsp/anon.bib
DEPENDS+=	bibsp/ecurrency.bib


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


.PHONY: clean
clean:
	${RM} ProtestVerif-paper.pdf ProtestVerif-slides.pdf


.PHONY: wc todo
wc todo: ${SRC}

.PHONY: print
print: ProtestVerif-paper.pdf


INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/doc.mk
INCLUDE_BIBSP=bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
