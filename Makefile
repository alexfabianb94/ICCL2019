all: iccl.pdf clean_aux

%.pdf: %.tex
	pdflatex -synctex=1 -interaction=nonstopmode $?
	bibtex $*.aux
	pdflatex -synctex=1 -interaction=nonstopmode $?
	pdflatex -synctex=1 -interaction=nonstopmode $?
	
pdflatex_%.pdf:  %.tex
	pdflatex -synctex=1 -interaction=nonstopmode $?
	pdflatex -synctex=1 -interaction=nonstopmode $?
	
clean:
	rm -rf *.pdf *.toc *.aux *.bbl *.log *.blg *.synctex.gz	
	
clean_aux:
	rm -rf *.toc *.aux *.bbl *.log *.blg *.synctex.gz *.out *.snm *.nav *.lof *.lot *.spl
	rm -rf */*.toc */*.aux */*.bbl */*.log */*.blg */*.synctex.gz */*.lof */*.lot
