mproof.pdf : fractal.200 latch.100
	tex mproof fractal.[1-9][0-9][0-9] latch.[1-9][0-9][0-9]
	dvipdfm mproof

fractal.200 : fractal.mp
	mpost fractal.mp

latch.100 : latch.mp
	mpost latch.mp

clean :
	rm -f fractal.??? latch.??? *.log *.dvi *.pdf
