% diagram_tt_gg_u.mp -- do not edit, generated automatically by tt_gg_u.tex
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
vconnect ("phantom", __i1, __v1, __o1);
vconnect ("phantom", __i2, __v2, __o2);
vconnect ("gluon,tension=1.3", __i1, __v1);
vconnect ("gluon,tension=1.3", __i2, __v2);
vconnect ("fermion,tension=0.1", __v2, __v1);
vconnect ("fermion,tension=1.3", __o1, __v2);
vconnect ("fermion,tension=1.3", __v1, __o2);
vlabel ("$\mathrm {g}$", __i1);
vlabel ("$\mathrm {g}$", __i2);
vlabel ("$\mathrm {\bar {t}}$", __o1);
vlabel ("$\mathrm {t}$", __o2);
vdot (__v1, __v2);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
