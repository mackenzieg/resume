.PHONY: all hardware software silicon template mostlyclean clean

all: hardware software silicon

hardware:
	-latexmk -pdf -silent -jobname='MackenzieGoodwinHardware' 'hardware.tex'

software:
	-latexmk -pdf -silent -jobname='MackenzieGoodwinSoftware' 'software.tex'

silicon:
	-latexmk -pdf -silent -jobname='MackenzieGoodwinSilicon' 'silicon.tex'

template:
	latexmk -pdf -silent -jobname='MackenzieGoodwinTemplate' 'template.tex'

mostlyclean:
	rm -f *.log

clean: mostlyclean
	rm -f *.aux *.out *.toc *.fdb_latexmk *.fls *.pdf
