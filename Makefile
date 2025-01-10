all: version
	latexmk notes-2714.tex

version:
	git log -1 --format=%h > version.tex

view: version
	latexmk -pv notes-2714.tex

clean:
	latexmk -c

realclean:
	latexmk -C
