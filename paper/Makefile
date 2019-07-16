.PHONY: all
all: paper.pdf

paper.pdf: main.pdf
	${LN} $< $@

main.pdf: popets
main.pdf: main.tex
main.pdf: preamble.tex preamble-paper.tex

SRC+=	contents.tex
SRC+=	abstract.tex
SRC+=	intro.tex
SRC+=	system-model.tex
SRC+=	current-crowd-counting.tex
SRC+= 	definitions.tex
SRC+= 	protest-model.tex
SRC+= 	security-properties.tex
SRC+= 	adversary-model.tex 
SRC+= 	building-blocks.tex
SRC+= 	ZKPK.tex
#SRC+= 	ZKPK-instantiations.tex
SRC+= 	distance-bounding.tex anon-cred.tex
#SRC+= 	DB-anon-cred.tex
SRC+= 	timestamp.tex
SRC+= 	protocol.tex
SRC+=	security-analysis.tex
SRC+= 	verifiability-analysis.tex
SRC+= 	privacy-analysis.tex
SRC+= 	performance.tex
SRC+= 	related-work.tex
SRC+= 	discussion.tex
SRC+=	conclusions.tex
SRC+= 	anon-cred-figures.tex
#SRC+=	tamarin-spec.tex
SRC+= 	identity-limits.tex

main.pdf: ${SRC}

FIGS+= 				proofshare.tikz
proofshare.tikz: 	../fig/proofshare.tikz

FIGS+= 				base-adversary.tikz
base-adversary.tikz: ../fig/base-adversary.tikz

${FIGS}:
	${LN} $< $@

main.pdf: ${FIGS}


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

main.pdf: ${DEPENDS}



.PHONY: clean
clean:
	${RM} paper.pdf main.pdf
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
