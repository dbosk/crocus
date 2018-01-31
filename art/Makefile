PNGfromXCF+= 	ProtestVerif.png ProtestVerif-UN.png
PNGfromXCF+= 	ProtestVerif-join.png
PNGfromXCF+= 	ProtestVerif-participating.png
PNGfromXCF+= 	ProtestVerif-endprotest.png
PNGfromXCF+= 	ProtestVerif-verifying.png
PNGfromXCF+= 	ProtestVerif-verified.png

.PHONY: all
all: ${PNGfromXCF}

%.png: %.xcf
	xcf2png $< -o $@
	convert -trim $@ $@


.PHONY: clean
clean:
	${RM} ProtestVerif.png ProtestVerif-UN.png
	${RM} ProtestVerif-endprotest.png ProtestVerif-join.png
	${RM} ProtestVerif-participating.png ProtestVerif-verified.png
	${RM} ProtestVerif-verifying.png


.PHONY: distclean
distclean:
	true
