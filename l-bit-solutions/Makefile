NOWEAVEFLAGS= 		-t2 -delay

.PHONY: all
all: l-bit.py l-bit.pdf

l-bit-go: l-bit-go.go
	go build $<

l-bit-go.go: l-bit-go.nw
	${NOTANGLE.go}

l-bit.py: l-bit.nw
	${NOTANGLE.py}
	chmod +x $@

l-bit.pdf: bibsp.sty


INCLUDE_MAKEFILES?=../makefiles
include ${INCLUDE_MAKEFILES}/noweb.mk
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_BIBSP?=../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
