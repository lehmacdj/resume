all:
	xelatex resume.tex

.PHONY: clean
clean:
	rm *.pdf *.aux *.out *.log *.fls *.fdb_latexmk *.synctex
