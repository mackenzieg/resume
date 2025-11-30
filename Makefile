.PHONY: all hardware software silicon template mostlyclean clean

OUTPDF ?= MackenzieGoodwinResume.pdf

all: hardware

hardware:
	pdflatex -jobname "$(basename $(OUTPDF))" hardware.tex
	if [ "$(basename $(OUTPDF)).pdf" != "$(OUTPDF)" ]; then cp "$(basename $(OUTPDF)).pdf" "$(OUTPDF)"; fi

mostlyclean:
	rm -f *.log

clean: mostlyclean
	rm -f *.aux *.out *.toc *.fdb_latexmk *.fls *.pdf
