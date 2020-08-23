all: political-economy-notes.pdf political-economy-notes.md
.PHONY: all

political-economy-notes.pdf: political-economy-notes.tex tex/lectures.tex
	latexmk -pdf political-economy-notes.tex

political-economy-notes.md: README.md lectures/l*.md
	pandoc -o political-economy-notes.md -t gfm README.md lectures/l*.md

tex/lectures.tex: lectures/l*.md
	pandoc -o tex/lectures.tex lectures/l*.md