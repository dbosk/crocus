SRC+= 	preamble.tex
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

FIGS+= 	../fig/tposet.tikz
FIGS+= 	../fig/proofshare.tikz

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

slides-short.pdf: slides-short.tex protocol.tex


.PHONY: clean
clean:
	${RM} slides-full.pdf slides-short.pdf


.PHONY: print
print: slides-full.pdf


preamble.tex: ../paper/preamble.tex
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

${SRC} ${FIGS}:
	${LN} $< $@


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/doc.mk
INCLUDE_BIBSP=../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
