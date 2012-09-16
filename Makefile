.PHONY: all clean diag

all: diag
	pdflatex ulotka-honte.tex
	pdflatex ulotka-honte.tex

clean:
	cd diag && $(MAKE) clean
	rm -f ulotka-honte.aux ulotka-honte.log

diag:
	cd diag && $(MAKE)

