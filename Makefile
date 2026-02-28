.PHONY: all hardware hardware-compact software silicon template mostlyclean clean

OUTPDF ?= MackenzieGoodwinResume.pdf
OUTPDF_COMPACT ?= MackenzieGoodwinResume-Compact.pdf

all: hardware

hardware:
	pdflatex -jobname "$(basename $(OUTPDF))" hardware.tex
	if [ "$(basename $(OUTPDF)).pdf" != "$(OUTPDF)" ]; then cp "$(basename $(OUTPDF)).pdf" "$(OUTPDF)"; fi

hardware-compact:
	pdflatex -jobname "$(basename $(OUTPDF_COMPACT))" "\def\compactmode{1}\input{hardware}"
	if [ "$(basename $(OUTPDF_COMPACT)).pdf" != "$(OUTPDF_COMPACT)" ]; then cp "$(basename $(OUTPDF_COMPACT)).pdf" "$(OUTPDF_COMPACT)"; fi

mostlyclean:
	rm -f *.log

clean: mostlyclean
	rm -f *.aux *.out *.toc *.fdb_latexmk *.fls *.pdf
