#! /usr/bin/env make

mydict.html: mydict.md
	pandoc $^ -s --mathjax -f markdown+tex_math_dollars -t html -o $@

mydict.md: preamble.txt litReview.txt approach.txt results.txt conclusion.txt
	cat $^ > mydict.md.tmp
	mv mydict.md.tmp $@

.PHONY: clean
clean:
	rm mydict.md mydict.html
