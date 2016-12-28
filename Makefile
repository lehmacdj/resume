all: resume.pdf

resume.pdf: resume.tex simpleresume.cls
	xelatex resume.tex

.PHONY: clean
clean:
	@echo "Clean!"
	@rm *.aux *.out *.log *.fls *.fdb_latexmk *.synctex *.pdf\
	>/dev/null 2>&1 | exit 0

persistent: resume.pdf
	cp resume.pdf files/resume.pdf
