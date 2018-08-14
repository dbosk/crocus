FIGS+= 	trump.jpg
FIGS+= 	proofshare.tikz
FIGS+= 	Jacobs-method.jpg

FIGS+= 	ProtestVerif-join.png
FIGS+= 	ProtestVerif-participating.png
FIGS+= 	ProtestVerif-endprotest.png
FIGS+= 	ProtestVerif-verifying.png
FIGS+= 	ProtestVerif-verified.png
FIGS+= 	ProtestVerif-UN.png
FIGS+= 	map-with-dots.png

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

slides-short.pdf: slides-short.tex preamble.tex revision.tex ${DEPENDS} ${FIGS}
slides-short.pdf: idea.tex

preamble.tex: ../paper/preamble.tex
revision.tex: ../paper/revision.tex

preamble.tex revision.tex:
	${LN} $< $@


.PHONY: clean
clean:
	${MAKE} -C ../art clean
	${RM} slides-full.pdf slides-short.pdf
	${RM} ${FIGS}
	${RM} preamble.tex revision.tex


.PHONY: print
print: slides-short.pdf


trump.jpg: ../fig/trump.jpg
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

map-with-dots.png:
	curl -o $@ https://i.amz.mshcdn.com/IXXVklwgW0nwbCXSJb1tWHLx2H4=/fit-in/1200x9600/http%3A%2F%2Fmashable.com%2Fwp-content%2Fuploads%2F2014%2F05%2FScreen-Shot-2014-05-01-at-3.56.31-PM.png


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/doc.mk
INCLUDE_BIBSP=../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk

../%:
	${MAKE} -C $(dir $@) $(notdir $@)

