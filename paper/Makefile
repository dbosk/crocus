.PHONY: all
all: paper.pdf

paper.pdf: paper.tex llncs
paper.pdf: preamble.tex preamble-paper.tex

SRC+=	contents.tex
SRC+=	abstract.tex
SRC+=	intro.tex
SRC+=	related-work.tex
SRC+= 	preliminaries.tex
SRC+= 	ZKPK.tex ZKPK-instantiations.tex
SRC+= 	distance-bounding.tex
SRC+= 	DB-Schnorr-UWB.tex
SRC+= 	DB-Schnorr-PKI.tex
SRC+= 	DB-Schnorr-nbit.tex
SRC+= 	formal-verification.tex
SRC+= 	performance.tex
SRC+= 	discussion.tex
SRC+=	conclusions.tex
SRC+=	tamarin-spec.tex

paper.pdf: ${SRC}

FIGS+= 				proofshare.tikz
proofshare.tikz: 	../fig/proofshare.tikz

FIGS+= 				base-adversary.tikz
base-adversary.tikz: ../fig/base-adversary.tikz

${FIGS}:
	${LN} $< $@

paper.pdf: ${FIGS}


DEPENDS+=	bibsp.sty
DEPENDS+=	crypto.bib
DEPENDS+=	location.bib
DEPENDS+=	sybil.bib
DEPENDS+=	auth.bib
DEPENDS+=	voting.bib
DEPENDS+=	protests.bib
DEPENDS+=	blockchain.bib
DEPENDS+=	anon.bib
DEPENDS+=	ecurrency.bib
DEPENDS+= 	osn.bib
DEPENDS+=	adhocnets.bib
DEPENDS+= 	references.bib
DEPENDS+= 	identity.bib

paper.pdf: ${DEPENDS}



.PHONY: clean
clean:
	${RM} paper.pdf
	${RM} ${FIGS}
	${MAKE} -C ../fig clean

.PHONY: distclean
distclean:
	${MAKE} -C ../fig distclean


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
