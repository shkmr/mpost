beginfig(201)
  u:=10cm;
  vardef koch(expr A,B,n) =
    save C; pair C;
    C = A rotatedaround(1/3[A,B], 120);
    if n>0:
      koch( A,        1/3[A,B], n-1);
      koch( 1/3[A,B], C,        n-1);
      koch( C,        2/3[A,B], n-1);
      koch( 2/3[A,B], B,        n-1);
    else:
      draw (A--1/3[A,B]--C--2/3[A,B]--B) shifted (20cm,20cm);
    fi;
  enddef;
  z0=(u,0);
  z1=z0 rotated 120;
  z2=z1 rotated 120;
  koch( z0, z1, 4 );
endfig;

beginfig(202)
  transform U, V;
  u:=16cm;
  z0=(0,0);
  z1=(u,0);
  U = identity yscaled -1 scaled (1/sqrt(3)) rotated 30;
  V = identity shifted -z1 yscaled -1 scaled (1/sqrt(3)) rotated -30 shifted z1;
  vardef koch(expr P, n) =
    if n > 0:
      koch(P transformed U, n-1);
      koch(P transformed V, n-1);
    else:
      draw P;
    fi;
  enddef;
  koch(z0--z1,12);
endfig;

beginfig(203)
  transform U, V;
  u:=8cm;
  z0=(0,0);
  z1=(u,0);
  U = identity rotated -45 scaled (1/sqrt(2));
  V = identity shifted -z1 rotated 45 scaled (1/sqrt(2)) shifted z1;
  vardef levy(expr P, n) =
    if n > 0:
      levy(P transformed U, n-1);
      levy(P transformed V, n-1);
    else:
      draw P;
    fi;
  enddef;
  levy(z0--z1,13);
endfig;

beginfig(204)
  transform U, V;
  u:=10cm;
  z0=(0,0);
  z1=(u,0);
  U = identity rotated -45 scaled (1/sqrt(2));
  V = identity scaled -1 rotated 45 scaled (1/sqrt(2)) shifted z1;
  vardef dragon(expr P, n) =
    if n > 0:
      dragon(P transformed U, n-1);
      dragon(P transformed V, n-1);
    else:
      draw P;
    fi;
  enddef;
  dragon(z0--z1,12);
endfig;


end.
