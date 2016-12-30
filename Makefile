default:
	pdflatex conceptests

clean:
	rm -f *.log *.aux *~ */*~ *.pdf
