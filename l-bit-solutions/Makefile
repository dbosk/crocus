NOWEAVEFLAGS= 		-t2

.PHONY: all
all: l-bit.py l-bit.pdf

l-bit-go: l-bit-go.go
	go build $<

l-bit-go.go: l-bit-go.nw
	${NOTANGLE.go}

l-bit.py: l-bit.nw
	${NOTANGLE.py}
	chmod +x $@


INCLUDE_MAKEFILES?=../makefiles
include ${INCLUDE_MAKEFILES}/noweb.mk
include ${INCLUDE_MAKEFILES}/tex.mk
