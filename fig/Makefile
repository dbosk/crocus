.PHONY: all
all: uqam.pdf

uqam.pdf: uqam.svg
uqam.pdf_tex: uqam.svg

keyless-car-theft.jpg:
	curl -o $@ https://www.businessmotoring.co.uk/wp-content/uploads/2017/12/locksmith-keyless-car-theft.jpg 

sensor-networks.jpg:
	curl -o $@ https://i.ytimg.com/vi/W1aMmCZ25fw/maxresdefault.jpg

v2v-communication.jpg:
	curl -o $@ https://blogs.mtu.edu/vehicularcomlab/files/2017/06/vehicle-to-vehicle-communication-as-robocop_qqkz.640.jpg


.PHONY: clean
clean:
	${RM} uqam.pdf uqam.pdf_tex

.PHONY: distclean
distclean:
	true


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/doc.mk

