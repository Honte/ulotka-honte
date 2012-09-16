DIAGS=2-1 2-2 3-1 4-1 4-2 6-1 6-2 d1-1 d1-2 d1-3 d1-4 d2-1 d2-2 d2-3 d2-4 
PDFS=$(DIAGS:=.pdf)

.PHONY: all_pdf clean

all_pdf: $(PDFS)

clean:
	rm -f $(PDFS) $(DIAGS:=.mp) $(DIAGS:=.tex) $(DIAGS:=.log)

%.pdf: %.eps
	epstopdf $< --outfile=$@

%.eps: %.mps
	perl mpstoeps $<

%.mps: %.1
	mv $< $@

%.1: %.mp
	mpost $<
	rm $*.log

4-%.mp: sgf2opts=-b 5 -r 8
d1-1.mp: sgf2opts=-b 4 -r 6
d1-2.mp d1-3.mp d1-4.mp: sgf2opts=-b 4 -r 5
 
%.mp: %.sgf
	sgf2dg -d -converter Mp "-Mp-stone_width 11" $(sgf2opts) -i $< -o $@
	rm $*.tex

