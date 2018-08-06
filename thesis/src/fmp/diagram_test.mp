% diagram_test.mp -- do not edit, generated automatically by fdia.tex
input feynmp
require_RCS_revision "1.30";
beginchar(1, 80*2.84526pt#, 55*2.84526pt#, 0);
"feynmf: 1";
LaTeX_unitlength:=2.84526pt;
subgraph (0, 0, w, h);
vinit;
pickup pencircle scaled thin;
vleft (__i1, __i2);
vright (__o1, __dummy, __o2, __o3, __o4, __dummy1, __o5);
vconnect ("phantom", __i1, __v1, __v2, __v3, __i2);
vconnect ("phantom", __v2, __v4);
vconnect ("phantom", __v4, __o3);
vconnect ("gluon", __i1, __v1);
vconnect ("fermion,label=$b$", __v1, __v2);
vconnect ("fermion", __o1, __v1);
vconnect ("fermion", __i2, __v3);
vconnect ("boson,label=$W^{+}$,label.dist=8,label.side=right", __v3, __v2);
vconnect ("fermion", __v3, __o5);
vconnect ("fermion,label=$t$,tension=0.1", __v2, __v4);
vfreeze;
vconnect ("boson,label=$W^{+}$", __v4, __v5);
vconnect ("fermion", __v4, __o2);
vconnect ("fermion", __o4, __v5);
vconnect ("fermion", __v5, __o3);
vlabel ("$g$", __i1);
vlabel ("$q$", __i2);
vlabel ("$\bar {b}$", __o1);
vlabel ("$b$", __o2);
vlabel ("$\nu _{\ell }$", __o3);
vlabel ("$\ell ^{+}$", __o4);
vlabel ("$q'$", __o5);
vdot (__v1, __v2, __v3, __v4, __v5);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
