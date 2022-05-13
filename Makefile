all: notes-2714.pdf

notes-2714.pdf: 
	latexmk notes-2714.tex

clean:
	latexmk -c

realclean:
	latexmk -C
