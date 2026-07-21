PDF_NAME := episodes-to-primitives.pdf
SOURCE_DATE_EPOCH ?= $(shell git log -1 --format=%ct 2>/dev/null || printf '%s' 0)
export SOURCE_DATE_EPOCH

.PHONY: check pdf clean

check:
	@test -f paper/main.tex
	@test -f paper/references.bib
	@test -f paper/sections/01-introduction.tex
	@test -f paper/sections/09-conclusion.tex
	@! rg -n "TODO|TBD|PLACEHOLDER" paper README.md
	@git diff --check

pdf:
	mkdir -p _build
	tectonic --outdir _build paper/main.tex
	mv _build/main.pdf _build/$(PDF_NAME)

clean:
	rm -rf _build output/pdf tmp/pdfs
