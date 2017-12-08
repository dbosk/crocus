.PHONY: all
all: uqam.pdf


uqam.pdf: uqam.svg
uqam.pdf_tex: uqam.svg


.PHONY: clean
clean:
	${RM} uqam.pdf uqam.pdf_tex

.PHONY: distclean
distclean:
	true


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/doc.mk

