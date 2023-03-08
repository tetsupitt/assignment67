#! /usr/bin/env make

all: mydict.html mydict.pdf mydict.md

mydict.pdf: mydict.md
	pandoc $< -o $@

mydict.html: mydict.md
	pandoc $< -s --mathjax -f markdown+tex_math_dollars -t html -o $@

mydict.md: preamble.txt litReview.txt approach.txt results.txt conclusion.txt
	cat $? > mydict.md.tmp
	mv mydict.md.tmp $@

.PHONY: clean
clean:
	rm mydict.md mydict.html mydict.pdf
