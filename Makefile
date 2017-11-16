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
ProtestVerif-paper.pdf: ${SRC} ${FIGS} ${DEPENDS}


.PHONY: all
all: ProtestVerif-slides.pdf

ProtestVerif-slides.pdf: ProtestVerif-slides.tex
ProtestVerif-slides.pdf: preamble.tex preamble-slides.tex
ProtestVerif-slides.pdf: ${SRC} ${FIGS} ${DEPENDS}


.PHONY: all
all: shortslides.pdf

shortslides.pdf: shortslides.tex protocol.tex


.PHONY: all
all: ProtestVerif-poster.pdf

ProtestVerif-poster.pdf: ProtestVerif-poster.tex contents-poster.tex
ProtestVerif-poster.pdf: preamble.tex preamble-slides.tex
ProtestVerif-poster.pdf: ${SRC} ${FIGS} ${DEPENDS}

ProtestVerif-poster.pdf: fig/kth_cmyk.eps fig/uqam.pdf
fig/uqam.pdf: fig/uqam.svg

ProtestVerif-poster.pdf: fig/qr.eps
fig/qr.eps: qr.txt
	cat $< | qrencode -t EPS > $@


.PHONY: clean
clean:
	${RM} ProtestVerif-paper.pdf ProtestVerif-slides.pdf
	${RM} ProtestVerif-poster.pdf fig/uqam.pdf fig/uqam.pdf_tex
	${RM} fig/qr.eps


.PHONY: wc todo
PREWC=	detex
wc todo: ${SRC}

.PHONY: print
print: ProtestVerif-paper.pdf


INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/doc.mk
INCLUDE_BIBSP=bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
