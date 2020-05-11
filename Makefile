notes.pdf: notes.tex tex/lectures.tex
	latexmk -pdf notes.tex

tex/lectures.tex: lectures/l*.md
	pandoc -o tex/lectures.tex lectures/l*.md