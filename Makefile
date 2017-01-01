default:
	pdflatex conceptests
	pdflatex conceptests

post:
	cp conceptests.pdf ~/Lightandmatter

clean:
	rm -f *.log *.aux *~ */*~ *.pdf
