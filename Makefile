all: dbsba.pdf dbsma.pdf

dbsba.pdf:
	pdflatex dbsba
	bibtex dbsba
	pdflatex dbsba
	pdflatex dbsba

dbsma.pdf:
	pdflatex dbsma
	bibtex dbsma
	pdflatex dbsma
	pdflatex dbsma

clean:
	rm -f *~ *.bak *.aux {dbsba,dbsma}.{log,toc,lof,lot,blg,bbl,pdf}
