.PHONY: all
all: notes.pdf

SRC+=		preamble.tex
SRC+=		abstract.tex

notes.pdf: abstract.tex
notes.pdf: ${SRC}


.PHONY: clean
clean:
	${RM} notes.pdf


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
