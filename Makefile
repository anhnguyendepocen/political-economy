all: political-economy-notes.pdf political-economy-notes.md
.PHONY: all

political-economy-notes.pdf: tex/skeleton.tex tex/lectures.tex
	latexmk -pdf -jobname=political-economy-notes tex/skeleton.tex
	latexmk -c -jobname=political-economy-notes tex/skeleton.tex

political-economy-notes.md: README.md lectures/l*.md
	pandoc -o political-economy-notes.md -t gfm README.md lectures/l*.md

tex/lectures.tex: lectures/l*.md
	pandoc -o tex/lectures.tex lectures/l*.md