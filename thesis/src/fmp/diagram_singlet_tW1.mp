% diagram_singlet_tW1.mp -- do not edit, generated automatically by singlet_tW1.tex
input feynmp
require_RCS_revision "1.30";
beginchar(1, 44*2.84526pt#, 31*2.84526pt#, 0);
"feynmf: 1";
LaTeX_unitlength:=2.84526pt;
subgraph (0, 0, w, h);
vinit;
pickup pencircle scaled thin;
vleft (__i1, __i2);
vright (__o1, __o2);
vconnect ("fermion", __i1, __v1);
vconnect ("gluon", __i2, __v2);
vconnect ("fermion,label=${\mathrm {t}}$, label.side=right", __v1, __v2);
vconnect ("boson", __v1, __o1);
vconnect ("fermion", __v2, __o2);
vlabel ("$\mathrm {b}$", __i1);
vlabel ("$\mathrm {g}$", __i2);
vlabel ("$\mathrm {W^{-}}$", __o1);
vlabel ("$\mathrm {t}$", __o2);
vdot (__v1, __v2);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
