MAIN = master
LATEX-CMD = xelatex

.PHONY: FORCE

main: ${MAIN}.tex
	latexrun --latex-cmd ${LATEX-CMD} ${MAIN}.tex


.PHONY: clean

clean:
	latexrun --clean-all
