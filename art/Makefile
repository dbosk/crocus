ProtestVerif.png: ProtestVerif.xcf
ProtestVerif-UN.png: ProtestVerif-UN.xcf

ProtestVerif.png ProtestVerif-UN.png:
	xcf2png $< -o $@
	convert -trim $@ $@


.PHONY: clean
clean:
	${RM} ProtestVerif.png ProtestVerif-UN.png
