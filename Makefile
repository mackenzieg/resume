# Makefile

.PHONY: all
all: hardware software silicon

.PHONY: hardware
hardware: MackenzieGoodwinHardware.pdf

.PHONY: software
software: MackenzieGoodwinSoftware.pdf

.PHONY: silicon
software: MackenzieGoodwinSilicon.pdf

MackenzieGoodwinHardware.pdf: hardware.tex
	-latexmk -pdf -silent -jobname='MackenzieGoodwinHardware' '$<'

MackenzieGoodwinSoftware.pdf: software.tex
	-latexmk -pdf -silent -jobname='MackenzieGoodwinSoftware' '$<'

MackenzieGoodwinSilicon.pdf: silicon.tex
	-latexmk -pdf -silent -jobname='MackenzieGoodwinSilicon' '$<'

.PHONY: mostlyclean
mostlyclean:
	rm -f *.log

.PHONY: clean
clean: mostlyclean
	rm -f *.aux *.out *.toc *.fdb_latexmk *.fls *.pdf
