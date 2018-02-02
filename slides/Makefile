FIGS+= 	tposet.tikz
FIGS+= 	proofshare.tikz
FIGS+= 	Jacobs-method.jpg

FIGS+= 	ProtestVerif-join.png
FIGS+= 	ProtestVerif-participating.png
FIGS+= 	ProtestVerif-endprotest.png
FIGS+= 	ProtestVerif-verifying.png
FIGS+= 	ProtestVerif-verified.png
FIGS+= 	ProtestVerif-UN.png

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
all: slides-short.pdf

slides-short.pdf: slides-short.tex
slides-short.pdf: idea.tex proofshare.tikz
slides-short.pdf: ProtestVerif-join.png ProtestVerif-participating.png
slides-short.pdf: ProtestVerif-endprotest.png ProtestVerif-verified.png
slides-short.pdf: ProtestVerif-verifying.png


.PHONY: clean
clean:
	${MAKE} -C ../art clean
	${RM} slides-full.pdf slides-short.pdf
	${RM} ${FIGS}


.PHONY: print
print: slides-short.pdf


tposet.tikz: ../fig/tposet.tikz
proofshare.tikz: ../fig/proofshare.tikz
Jacobs-method.jpg: ../fig/Jacobs-method.jpg

ProtestVerif-join.png: ../art/ProtestVerif-join.png
ProtestVerif-participating.png: ../art/ProtestVerif-participating.png
ProtestVerif-endprotest.png: ../art/ProtestVerif-endprotest.png
ProtestVerif-verified.png: ../art/ProtestVerif-verified.png
ProtestVerif-verifying.png: ../art/ProtestVerif-verifying.png
ProtestVerif-UN.png: ../art/ProtestVerif-UN.png

${FIGS}:
	${LN} $< $@

../%:
	${MAKE} -C $(dir $@) $(notdir $@)


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/doc.mk
INCLUDE_BIBSP=../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
