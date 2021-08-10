verbatimtex
%&latex
\documentclass{article}
\usepackage{amsmath,amssymb}
\begin{document}
etex

beginfig(1001);
  draw (0,0)--(10,0)--(10,10)--(0,10)--(0,0);
  label.top(btex $\sqrt 2$ etex, (0,0));
endfig;
beginfig(1002);
  draw fullcircle scaled 1cm;
endfig;

beginfig(1003);
  fill fullcircle scaled 1cm shifted (5cm,5cm) withcolor 0.8white;
  fill 10dir(0)--10dir(72*2)--10dir(72*4)--10dir(72*1)--10dir(72*3)--cycle withcolor 0.9white;
endfig;
end.
