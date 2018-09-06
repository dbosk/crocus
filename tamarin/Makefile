MODELS?= 		crocus.spthy

TAMARIN= 		tamarin-prover
TAMARINFLAGS= 	--quit-on-warning


.PHONY: all proof
all: proof

proof: ${MODELS}
	${TAMARIN} --prove ${TAMARINFLAGS} $^


.PHONY: test
test: ${MODELS}
	${TAMARIN} --parse-only ${TAMARINFLAGS} $^
