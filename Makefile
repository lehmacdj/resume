all: resume.pdf

resume.pdf: resume.tex simpleresume.cls
	xelatex resume.tex

.PHONY: clean
clean:
	@rm *.aux *.out *.log *.fls *.fdb_latexmk *.synctex *.pdf\
	>/dev/null 2>&1 | exit 0
	@echo "Clean!"

persistent: resume.pdf
	cp resume.pdf files/resume.pdf
