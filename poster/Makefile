.PHONY: all
all: poster.pdf

poster.pdf: poster.tex preamble.tex contents.tex
poster.pdf: kth_cmyk.eps uqam.pdf

FIG+= 	kth_cmyk.eps uqam.pdf

kth_cmyk.eps: 		../fig/kth_cmyk.eps
uqam.pdf: 			../fig/uqam.pdf

poster.pdf: qr.eps
qr.eps: qr.txt
	cat $< | qrencode -t EPS > $@

poster.pdf: ../fig/trump.jpg ../fig/Jacobs-method.jpg
poster.pdf: ../art/ProtestVerif.png ../art/ProtestVerif-UN.png

FIG+= 	trump.jpg Jacobs-method.jpg

trump.jpg: 			../fig/trump.jpg
Jacobs-method.jpg: 	../fig/Jacobs-method.jpg

FIG+= 	ProtestVerif.png ProtestVerif-UN.png

ProtestVerif.png: 	../art/ProtestVerif.png
ProtestVerif-UN.png:../art/ProtestVerif-UN.png

poster.pdf: proofshare.tikz

FIG+= 	proofshare.tikz

proofshare.tikz: ../fig/proofshare.tikz


${FIG}:
	${LN} $< $@

../%:
	${MAKE} -C ../$(dir $@) $(notdir $@)


.PHONY: all
all: posterslide.pdf

posterslide.pdf: posterslide.tex


.PHONY: clean
clean:
	${RM} poster.pdf
	${RM} qr.eps
	${RM} ${FIG}
	${MAKE} -C ../art clean
	${MAKE} -C ../fig clean
	${RM} posterslide.pdf

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
