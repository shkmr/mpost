%%
%%
%%
beginfig(100);
  numeric ux, uy;
  5ux=5cm; 3uy=3cm;
  ahlength := 4;
  drawarrow (0,-1uy)--(0,3uy);
  drawarrow (-1ux,0)--(4.5ux,0);
  pickup pencircle scaled 1pt;
  draw (0,0){right}..{dir 60}(1ux,0.5uy)..(2ux,2uy)..{right}(4ux,2.5uy);
  label.ulft(btex $V$ etex, (0,3uy));
  label.lrt(btex $t$ etex, (4.5ux,0));
  label.bot(btex $t_1$ etex, (1ux,0));
  label.bot(btex $t_2$ etex, (2ux,0));
  label.lft(btex $V_t$ etex, (0, 0.5uy));
  label.lft(btex $I_L R_L$ etex, (0, 2.5uy));
  label.lft(btex $I_L R_L (1-e^{-1})$ etex, (0, 2.0uy));
  pickup pencircle scaled 0.5pt;
  draw (1ux,0uy)--(1ux,2.3uy) dashed evenly;
  draw (2ux,0uy)--(2ux,2.3uy) dashed evenly;
  draw (0,2.5uy)--(3ux,2.5uy) dashed evenly;
  draw (0.8ux,0.5uy)--(1.2ux,0.5uy);
  draw (1.8ux,2.0uy)--(2.2ux,2.0uy);
  draw (1ux,-0.5uy)--(1ux,-1uy) dashed evenly;
  label.top(btex I etex, (0.5ux,-1uy));
  label.top(btex II etex, (1.8ux,-1uy));
endfig;

beginfig(101);
  numeric ux, uy;
  5ux=4cm;3uy=2cm;
  drawarrow (-4ux,0)--(5ux,0);
  drawarrow (0,-3uy)--(0,3uy);
  label.lrt(btex $V_i$ etex, (5ux,0));
  label.ulft(btex $I$ etex, (0,3uy));
  pickup pencircle scaled 1pt;
  draw(-4ux,-2uy)--(-1.5ux,-2uy)--(1.5ux,2uy)--(4ux,2uy);
  pickup pencircle scaled 0.2pt;
  draw(-3ux,-2uy){right}..1.6/3(-1.5ux,-2uy)--1.6/3(1.5ux,2uy)..{right}(3ux,2uy);
  pickup pencircle scaled 0.5pt;
  draw(-1.5ux,0)--(-1.5ux,-2uy) dashed evenly;
  draw(0,-2uy)--(-1.5ux,-2uy) dashed evenly;
  draw(1.5ux,0)--(1.5ux,2uy) dashed evenly;
  draw(0,2uy)--(1.5ux,2uy) dashed evenly;
  label.lft(btex $I_L$ etex, (0ux,2uy));
  label.rt(btex $-I_L$ etex, (0ux,-2uy));
  label.bot(btex $V_t$ etex, (1.5ux,0uy));
  label.top(btex $V_t$ etex, (-1.5ux,0uy));
endfig;

end.
