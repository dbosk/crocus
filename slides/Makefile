SRC+= 	preamble.tex preamble-slides.tex
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
all: slides-full.pdf

slides-full.pdf: slides-full.tex
slides-full.pdf: preamble.tex preamble-slides.tex
slides-full.pdf: ${SRC} ${FIGS} ${DEPENDS}


.PHONY: all
all: slides-short.pdf

slides-short.pdf: slides-short.tex
slides-short.pdf: intro.tex
slides-short.pdf: idea.tex proofshare.tikz
slides-short.pdf: ProtestVerif-join.png ProtestVerif-participating.png
slides-short.pdf: ProtestVerif-endprotest.png ProtestVerif-verified.png
slides-short.pdf: ProtestVerif-verifying.png


.PHONY: clean
clean:
	${MAKE} -C ../art clean
	${RM} slides-full.pdf slides-short.pdf
	${RM} ProtestVerif-UN.png ProtestVerif-endprotest.png ProtestVerif-join.png
	${RM} ProtestVerif-participating.png ProtestVerif-verified.png
	${RM} ProtestVerif-verifying.png ProtestVerif.png


.PHONY: print
print: slides-full.pdf


preamble.tex: ../paper/preamble.tex
preamble-slides.tex: ../paper/preamble-slides.tex
contents.tex: ../paper/contents.tex
abstract.tex: ../paper/abstract.tex
intro.tex: ../paper/intro.tex
SystemModel.tex: ../paper/SystemModel.tex
properties.tex: ../paper/properties.tex
RelatedWork.tex: ../paper/RelatedWork.tex
primitives.tex: ../paper/primitives.tex
protocol.tex: ../paper/protocol.tex
security.tex: ../paper/security.tex
conclusions.tex: ../paper/conclusions.tex

tposet.tikz: ../fig/tposet.tikz
proofshare.tikz: ../fig/proofshare.tikz
Jacobs-method.jpg: ../fig/Jacobs-method.jpg

ProtestVerif-join.png: ../art/ProtestVerif-join.png
ProtestVerif-participating.png: ../art/ProtestVerif-participating.png
ProtestVerif-endprotest.png: ../art/ProtestVerif-endprotest.png
ProtestVerif-verified.png: ../art/ProtestVerif-verified.png
ProtestVerif-verifying.png: ../art/ProtestVerif-verifying.png
ProtestVerif-UN.png: ../art/ProtestVerif-UN.png

${SRC} ${FIGS}:
	${LN} $< $@

../%:
	${MAKE} -C $(dir $@) $(notdir $@)


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/doc.mk
INCLUDE_BIBSP=../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
