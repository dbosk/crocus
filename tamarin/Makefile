.PHONY: all proof
all: proof

TAMARIN=tamarin-prover
TAMARINFLAGS=--prove --quit-on-warning

proof: crocus.spthy
	${TAMARIN} ${TAMARINFLAGS} $^
