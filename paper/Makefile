.PHONY: all
all: paper.pdf

paper.pdf: paper.tex
paper.pdf: preamble.tex preamble-paper.tex

SRC+=	contents.tex
SRC+=	abstract.tex
SRC+=	intro.tex
SRC+=	system-model.tex
SRC+= 	protest-model.tex
SRC+= 	verifiability-properties.tex
SRC+= 	adversary-model.tex
SRC+=	privacy-properties.tex
SRC+=	related-work.tex
SRC+= 	building-blocks.tex
SRC+= 	ZKPK.tex ZKPK-instantiations.tex
SRC+= 	distance-bounding.tex anon-cred.tex DB-anon-cred.tex
SRC+= 	location-proofs.tex timestamp.tex
SRC+= 	protocol.tex
SRC+=	analysis-security.tex analysis-performance.tex
SRC+= 	discussion.tex
SRC+=	conclusions.tex

paper.pdf: ${SRC}

FIGS+= 				proofshare.tikz
proofshare.tikz: 	../fig/proofshare.tikz

FIGS+= 				base-identity-cause-adversary.tikz
base-identity-cause-adversary.tikz: ../fig/base-identity-cause-adversary.tikz

FIGS+= 				base-identity-location-adversary.tikz
base-identity-location-adversary.tikz: ../fig/base-identity-location-adversary.tikz

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
