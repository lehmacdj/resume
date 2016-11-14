all:
	xelatex resume.tex

.PHONY: clean
clean:
	@echo "Clean!"
	@rm *.aux *.out *.log *.fls *.fdb_latexmk *.synctex\
	>/dev/null 2>&1 | exit 0
