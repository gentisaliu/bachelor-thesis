% diagram_H_gg.mp -- do not edit, generated automatically by H_gg.tex
input feynmp
require_RCS_revision "1.30";
beginchar(1, 40*2.84526pt#, 28*2.84526pt#, 0);
"feynmf: 1";
LaTeX_unitlength:=2.84526pt;
subgraph (0, 0, w, h);
vinit;
pickup pencircle scaled thin;
vleft (__i1, __i2);
vright (__o1);
vconnect ("phantom", __i1, __v1);
vconnect ("phantom", __i2, __v2);
vconnect ("phantom", __v1, __v2);
vconnect ("phantom", __v2, __v3);
vconnect ("phantom", __v3, __v1);
vconnect ("phantom", __i1, __v1, __v3);
vconnect ("phantom", __i2, __v2, __v3);
vconnect ("phantom", __v1, __v3, __o1);
vconnect ("phantom", __v2, __v3, __o1);
vconnect ("gluon,tension=1.9", __i1, __v1);
vconnect ("gluon,tension=1.9", __i2, __v2);
vconnect ("fermion", __v1, __v2);
vconnect ("fermion", __v2, __v3);
vconnect ("fermion", __v3, __v1);
vconnect ("dashes,tension=2.5", __v3, __o1);
vlabel ("$\mathrm {g}$", __i1);
vlabel ("$\mathrm {g}$", __i2);
vlabel ("$\mathrm {H}$", __o1);
vdot (__v1, __v2, __v3);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
