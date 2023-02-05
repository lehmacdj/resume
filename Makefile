all: resume.pdf

resume.pdf: resume.tex simpleresume.cls
	xelatex resume.tex && rm resume.pdf && xelatex resume.tex

.PHONY: clean
clean:
	@rm *.aux *.out *.log *.fls *.fdb_latexmk *.synctex *.pdf\
	>/dev/null 2>&1 | exit 0
	@echo "Clean!"

.PHONY: persistent
persistent: files/Devin_Lehmacher.pdf
	echo Don't make the persistent resume locally, it's built by the CI job

files/Devin_Lehmacher.pdf: resume.pdf
	cp resume.pdf files/Devin_Lehmacher.pdf
