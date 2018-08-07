% diagram_H_tHW.mp -- do not edit, generated automatically by H_tHW.tex
input feynmp
require_RCS_revision "1.30";
beginchar(1, 40*2.84526pt#, 28*2.84526pt#, 0);
"feynmf: 1";
LaTeX_unitlength:=2.84526pt;
subgraph (0, 0, w, h);
vinit;
pickup pencircle scaled thin;
vleft (__i1, __i2);
vright (__o1, __o2, __o3);
vconnect ("phantom", __i1, __v1, __v2, __o1);
vconnect ("phantom", __i2, __v1, __v2, __o3);
vconnect ("phantom", __i2, __v1, __v2, __o1);
vconnect ("phantom", __i1, __v1, __v2, __o3);
vconnect ("phantom", __o1, __v3, __o2);
vconnect ("phantom", __v2, __v3, __o2);
vconnect ("phantom", __v2, __v3, __o1);
vconnect ("phantom", __v2, __o3);
vconnect ("fermion,tension=2.5", __i1, __v1);
vconnect ("gluon,tension=2.5", __i2, __v1);
vconnect ("fermion,label=$\mathrm {b}$,tension=0.1,label.side=left", __v1, __v2);
vconnect ("boson", __v3, __o1);
vconnect ("boson,label=$\mathrm {W^{-}}$,label.dist=6,label.side=right", __v2, __v3);
vfreeze;
vconnect ("fermion,tension=2.5", __v2, __o3);
vconnect ("dashes", __v3, __o2);
vlabel ("$\mathrm {b}$", __i1);
vlabel ("$\mathrm {g}$", __i2);
vvertex ("label=$\mathrm {W^{-}}$,label.dist=4", __o1);
vvertex ("label=$\mathrm {H}$,label.dist=2", __o2);
vlabel ("$\mathrm {t}$", __o3);
vdot (__v1, __v2, __v3);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
