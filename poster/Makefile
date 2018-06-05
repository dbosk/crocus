.PHONY: all
all: poster.pdf

poster.pdf: poster.tex preamble.tex contents.tex
poster.pdf: bibsp.sty

preamble.tex: 		../paper/preamble.tex
	${LN} $^ $@

revision.tex: 		../paper/revision.tex
	${LN} $^ $@

FIGS+= 				kth_cmyk.eps uqam.pdf

kth_cmyk.eps: 		../fig/kth_cmyk.eps
uqam.pdf: 			../fig/uqam.pdf

qr.eps: 			qr.txt
	cat $< | qrencode -t EPS > $@

FIGS+= 				trump.jpg Jacobs-method.jpg

trump.jpg: 			../fig/trump.jpg
Jacobs-method.jpg: 	../fig/Jacobs-method.jpg

FIGS+= 				ProtestVerif.png ProtestVerif-UN.png

ProtestVerif.png: 	../art/ProtestVerif.png
ProtestVerif-UN.png:../art/ProtestVerif-UN.png

FIGS+= 				proofshare.tikz

proofshare.tikz: 	../fig/proofshare.tikz


poster.pdf: ${FIGS} qr.eps

${FIGS}:
	${LN} $< $@


.PHONY: all
all: posterslide.pdf

posterslide.pdf: posterslide.tex trump.jpg


.PHONY: clean
clean:
	${RM} poster.pdf poster.nav
	${RM} qr-eps-converted-to.pdf
	${MAKE} -C ../art clean
	${MAKE} -C ../fig clean
	${RM} posterslide.pdf
	${RM} kth_cmyk-eps-converted-to.pdf
	${RM} ${FIGS}

.PHONY: distclean
distclean:
	${MAKE} -C ../art distclean
	${MAKE} -C ../fig distclean


.PHONY: print
print: poster.pdf


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/doc.mk
INCLUDE_BIBSP=../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk

../%:
	${MAKE} -C $(dir $@) $(notdir $@)

