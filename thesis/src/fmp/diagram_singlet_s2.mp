% diagram_singlet_s2.mp -- do not edit, generated automatically by singlet_s2.tex
input feynmp
require_RCS_revision "1.30";
beginchar(1, 40*2.84526pt#, 28*2.84526pt#, 0);
"feynmf: 1";
LaTeX_unitlength:=2.84526pt;
subgraph (0, 0, w, h);
vinit;
pickup pencircle scaled thin;
vleft (__i1, __i2);
vright (__o1, __o2);
vconnect ("fermion", __v1, __i1);
vconnect ("fermion", __i2, __v1);
vconnect ("boson,label=${\mathrm {W^{+}}}$,label.side=right", __v2, __v1);
vconnect ("fermion", __o1, __v2);
vconnect ("fermion", __v2, __o2);
vlabel ("$\mathrm {q}$", __i2);
vlabel ("$\mathrm {\bar {q}'}$", __i1);
vlabel ("$\mathrm {t}$", __o2);
vlabel ("$\mathrm {\bar {b}}$", __o1);
vdot (__v1, __v2);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
