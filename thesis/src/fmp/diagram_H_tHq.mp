% diagram_H_tHq.mp -- do not edit, generated automatically by H_tHq.tex
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
vconnect ("phantom", __i2, __v2, __v1, __i1);
vconnect ("phantom", __v1, __v3, __o1);
vconnect ("phantom", __o1, __v3, __o2);
vconnect ("phantom", __i1, __v1, __o1);
vconnect ("phantom", __i2, __v2, __o3);
vconnect ("fermion", __i1, __v1);
vconnect ("fermion", __i2, __v2);
vconnect ("boson,label=$\mathrm {W^{+}}$,label.dist=4,label.side=right,tension=2.1", __v2, __v1);
vconnect ("fermion", __v2, __o3);
vconnect ("fermion,label=$\mathrm {t}$", __v1, __v3);
vfreeze;
vconnect ("dashes", __v3, __o2);
vconnect ("fermion", __v3, __o1);
vlabel ("$\mathrm {b}$", __i1);
vlabel ("$\mathrm {q}$", __i2);
vlabel ("$\mathrm {t}$", __o1);
vvertex ("label=$\mathrm {H}$,label.dist=2", __o2);
vlabel ("$\mathrm {q'}$", __o3);
vdot (__v1, __v2, __v3);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
