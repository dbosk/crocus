SRC+=	contents.tex
SRC+=	abstract.tex
SRC+=	intro.tex
SRC+=	SystemModel.tex
SRC+=	properties.tex
SRC+=	RelatedWork.tex
SRC+= 	primitives.tex
SRC+= 	protocol.tex
SRC+=	security.tex
SRC+=	conclusions.tex

FIGS+= 	fig/tposet.tex

DEPENDS+=	bibsp.sty
DEPENDS+=	crypto.bib
DEPENDS+=	location.bib
DEPENDS+=	reputation.bib
DEPENDS+=	auth.bib
DEPENDS+=	voting.bib
DEPENDS+=	protests.bib
DEPENDS+=	blockchain.bib
DEPENDS+=	anon.bib
DEPENDS+=	ecurrency.bib


.PHONY: all
all: ProtestVerif-paper.pdf

#ProtestVerif-paper.pdf: lncs
ProtestVerif-paper.pdf: ProtestVerif-paper.tex
ProtestVerif-paper.pdf: preamble.tex preamble-paper.tex
ProtestVerif-paper.pdf: ${SRC} ${FIGS} ${DEPENDS}


.PHONY: clean
clean:
	${RM} ProtestVerif-paper.pdf


.PHONY: wc todo
PREWC=	detex
wc todo: ${SRC}


.PHONY: print
print: ProtestVerif-paper.pdf


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/doc.mk
INCLUDE_BIBSP=../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
