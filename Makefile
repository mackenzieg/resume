# Makefile

.DELETE_ON_ERROR:

.PHONY: all
all: hardware software silicon

.PHONY: hardware
hardware: MackenzieGoodwinHardware.pdf

.PHONY: software
software: MackenzieGoodwinSoftware.pdf

.PHONY: silicon
software: MackenzieGoodwinSilicon.pdf

MackenzieGoodwinHardware.pdf: resume.tex
	-latexmk -pdf -jobname='MackenzieGoodwinHardware' '$<'

MackenzieGoodwinSoftware.pdf: resume.tex
	-latexmk -pdf -jobname='MackenzieGoodwinSoftware' '$<'

MackenzieGoodwinSilicon.pdf: resume.tex
	-latexmk -pdf -jobname='MackenzieGoodwinSilicon' '$<'

.PHONY: mostlyclean
mostlyclean:
	rm -f *.log

.PHONY: clean
clean: mostlyclean distclean
	rm -f *.aux *.out *.toc *.fdb_latexmk *.fls

.PHONY: distclean
distclean: clean
	rm -f *.pdf