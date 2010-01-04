all: memoria

memoria: memoria.tex 
	pdflatex memoria.tex

intro: intro.tex

clean: 
	rm *aux *toc *log *pdf
