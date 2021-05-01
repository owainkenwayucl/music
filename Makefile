all: print image

print: ash-grove.pdf

image: ash-grove.png

%.png: %.ly Makefile
	lilypond --png $<

%.pdf: %.ly Makefile
	lilypond --pdf $<


%.ly : source/%.abc Makefile
	abc2ly -b $<

clean:
	rm -f *.png *.ly *.midi *.pdf

.PHONY: clean all
