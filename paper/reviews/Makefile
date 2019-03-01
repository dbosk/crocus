.PHONY: all
all: popets-changes.pdf

popets-changes.pdf: popets-changes.tex ../main.pdf

../main.pdf:
	${MAKE} -C $(dir $@) $(notdir $@)


.PHONY: wc
wc: popets-2019.3-rebuttal.md


INCLUDE_MAKEFILES=../../makefiles
include ${INCLUDE_MAKEFILES}/doc.mk
include ${INCLUDE_MAKEFILES}/tex.mk
