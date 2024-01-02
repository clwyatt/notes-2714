all:
	latexmk notes-2714.tex

clean:
	latexmk -c

realclean:
	latexmk -C
