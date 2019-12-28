PNGSRC := $(filter-out old/%,$(shell grep -Fl '\include "../embed-prelude.ly"' */*.ly))
PDFSRC := $(filter-out old/%,$(shell grep -FL '\include "../embed-prelude.ly"' */*.ly))
PNGOUT := $(PNGSRC:%.ly=%.png)
PDFOUT := $(PDFSRC:%.ly=%.pdf)

.PHONY: build clean

build: $(PNGOUT) $(PDFOUT)

%.png: %.ly embed-prelude.ly fjs.ly
	lilypond -dresolution=120 -dbackend=eps -dno-gs-load-fonts -dinclude-eps-fonts \
		-daux-files='#f' -dpixmap-format=pngalpha --png -o $(basename $@) $<

%.pdf: %.ly fjs.ly
	lilypond -o $(basename $@) $<

clean:
	rm $(PNGOUT) $(PDFOUT)
