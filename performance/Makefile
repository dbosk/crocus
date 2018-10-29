.PHONY: all
all: results

.PHONY: results results-crocus results-schnorr
results: results-crocus results-schnorr

results-crocus: charm-crocus.py
	(echo; date; echo) >> $@
	python3 charm-crocus.py | tee -a $@

results-schnorr: charm-schnorr.py
	(echo; date; echo) >> $@
	python3 charm-schnorr.py | tee -a $@
