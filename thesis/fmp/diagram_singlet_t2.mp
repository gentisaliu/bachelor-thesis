% diagram_singlet_t2.mp -- do not edit, generated automatically by singlet_t2.tex
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
vconnect ("gluon", __i1, __v1);
vconnect ("fermion,label=$\mathrm {b}$,label.side=right,label.dist=5", __v1, __v2);
vconnect ("fermion", __o1, __v1);
vconnect ("fermion", __i2, __v3);
vconnect ("boson,label=$\mathrm {W}^{+}$,label.dist=2", __v3, __v2);
vconnect ("fermion", __v3, __o3);
vconnect ("fermion", __v2, __o2);
vlabel ("$\mathrm {g}$", __i1);
vlabel ("$\mathrm {q}$", __i2);
vlabel ("$\mathrm {\bar {b}}$", __o1);
vlabel ("$\mathrm {t}$", __o2);
vlabel ("$\mathrm {q'}$", __o3);
vdot (__v1, __v2, __v3);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
