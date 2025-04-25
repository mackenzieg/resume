.PHONY: all hardware software silicon template mostlyclean clean

all: hardware

hardware:
	pdflatex hardware.tex

mostlyclean:
	rm -f *.log

clean: mostlyclean
	rm -f *.aux *.out *.toc *.fdb_latexmk *.fls *.pdf
