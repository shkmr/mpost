mproof.pdf : fig.1001 fractal.200 latch.100
	tex mproof fig.[1-9][0-9][0-9][0-9] fractal.[1-9][0-9][0-9] latch.[1-9][0-9][0-9]
	dvipdfm mproof

fractal.200 : fractal.mp
	mpost fractal.mp

latch.100 : latch.mp
	mpost latch.mp

fig.1001 : fig.mp
	mpost fig.mp

fig1001.svg : fig.mp
	mpost -s 'outputtemplate="%j%c.svg"' -s 'outputformat="svg"' -s prologues=3 fig.mp

clean :
	rm -f fractal.??? latch.??? *.log *.dvi *.pdf
