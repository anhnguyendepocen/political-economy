political-economy-notes.pdf: political-economy-notes.tex tex/lectures.tex
	latexmk -pdf political-economy-notes.tex

tex/lectures.tex: lectures/l*.md
	pandoc -o tex/lectures.tex lectures/l*.md