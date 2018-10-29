.PHONY: all
all: results


.PHONY: results results-crocus results-schnorr
results: results-crocus results-schnorr

results-crocus: charm-crocus.py
	(echo; date; echo) >> $@
	(python3 charm-crocus.py -v & sleep 0.1; python3 charm-crocus.py -p) | tee -a $@

results-schnorr: charm-schnorr.py
	(echo; date; echo) >> $@
	(python3 charm-schnorr.py -v & sleep 0.1; python3 charm-schnorr.py -p) | tee -a $@


.PHONY: clean
clean:
	git checkout -- results-crocus
	git checkout -- results-schnorr
