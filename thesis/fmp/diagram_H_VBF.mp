% diagram_H_VBF.mp -- do not edit, generated automatically by H_VBF.tex
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
vconnect ("phantom", __i1, __v1, __o1);
vconnect ("phantom", __i2, __v3, __o3);
vconnect ("fermion", __i1, __v1);
vconnect ("fermion", __i2, __v3);
vconnect ("boson,label=$\mathrm {W,,Z}$,label.side=left", __v1, __v2);
vconnect ("boson,label=$\mathrm {W,,Z}$", __v2, __v3);
vconnect ("fermion", __v1, __o1);
vconnect ("dashes", __v2, __o2);
vconnect ("fermion", __v3, __o3);
vlabel ("$\mathrm {q}$", __i1);
vlabel ("$\mathrm {q'}$", __i2);
vlabel ("$\mathrm {q'}$", __o1);
vlabel ("$\mathrm {H}$", __o2);
vlabel ("$\mathrm {q}$", __o3);
vdot (__v1, __v2, __v3);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
