.PHONY: all wc
all: protest-auth-paper.pdf

protest-auth-paper.pdf: protest-auth-paper.tex
protest-auth-paper.pdf: llncs libbib.sty
protest-auth-paper.pdf: crypto.bib
protest-auth-paper.pdf: location.bib
protest-auth-paper.pdf: reputation.bib
protest-auth-paper.pdf: auth.bib

wc: protest-auth.tex

INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_LIBBIB=libbib
include ${INCLUDE_LIBBIB}/libbib.mk
