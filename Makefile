all: memoria

bib: memoria.tex bibliografia.bib
	pdflatex memoria
	bibtex memoria
	pdflatex memoria
	pdflatex memoria

memoria: memoria.tex 
	pdflatex memoria.tex

intro: intro.tex

clean: 
	rm *aux *toc *log *pdf
