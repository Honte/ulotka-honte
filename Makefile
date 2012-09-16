.PHONY: all clean diag

all: diag
	pdflatex ulotka-wog.tex
	pdflatex ulotka-wog.tex

clean:
	cd diag && $(MAKE) clean
	rm -f ulotka-wog.aux ulotka-wog.log

diag:
	cd diag && $(MAKE)

