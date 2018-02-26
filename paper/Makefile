.PHONY: all
all: paper.pdf

paper.pdf: paper.tex
paper.pdf: preamble.tex preamble-paper.tex

SRC+=	contents.tex
SRC+=	abstract.tex
SRC+=	intro.tex
SRC+=	SystemModel.tex
SRC+=	properties.tex
SRC+=	RelatedWork.tex
SRC+= 	BuildingBlocks.tex
SRC+= 	anon-cred.tex DistanceBounding.tex LocationProofs.tex TimeStamp.tex
SRC+= 	DB-anon-cred.tex
SRC+= 	protocol.tex
SRC+=	security.tex
SRC+=	conclusions.tex

paper.pdf: ${SRC} popets dgruyter-biblatex.sty

FIGS+= 				tposet.tikz proofshare.tikz
tposet.tikz: 		../fig/tposet.tikz
proofshare.tikz: 	../fig/proofshare.tikz

FIGS+= 				Jacobs-method.jpg
Jacobs-method.jpg: 	../fig/Jacobs-method.jpg

${FIGS}:
	${LN} $< $@

paper.pdf: ${FIGS}


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
DEPENDS+=	adhocnets.bib
paper.pdf: ${DEPENDS}



.PHONY: clean
clean:
	${RM} paper.pdf
	${MAKE} -C ../fig clean

.PHONY: distclean
distclean:
	${MAKE} -C ../fig distclean
	${RM} ${FIGS}


.PHONY: wc todo
PREWC=	detex
wc todo: ${SRC}


.PHONY: print
print: paper.pdf


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/doc.mk
INCLUDE_BIBSP=../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk

../%:
	${MAKE} -C $(dir $@) $(notdir $@)
