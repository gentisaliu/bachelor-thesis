% diagram_emu_tt.mp -- do not edit, generated automatically by emu_tt.tex
input feynmp
require_RCS_revision "1.30";
beginchar(1, 80*2.84526pt#, 55*2.84526pt#, 0);
"feynmf: 1";
LaTeX_unitlength:=2.84526pt;
subgraph (0, 0, w, h);
vinit;
pickup pencircle scaled thin;
vleft (__i1, __i2);
vright (__o1, __o2, __o3, __o4, __o5, __o6);
vfreeze;
vconnect ("gluon,tension=1.5", __i1, __v1);
vconnect ("gluon,tension=1.5", __i2, __v1);
vconnect ("gluon,label=${\mathrm {g}}$, label.side=right,label.dist=12,tension=2", __v1, __v2);
vconnect ("fermion,label=$\mathrm {\bar {t}}$,tension=1.5,label.side=left", __v3, __v2);
vconnect ("fermion,label=$\mathrm {t}$,tension=1.5,label.side=left", __v2, __v4);
vconnect ("fermion,tension=0.5", __o1, __v3);
vconnect ("boson,label=$\mathrm {W^{-}}$,tension=0.5,label.side=right", __v5, __v3);
vconnect ("fermion,tension=0.5", __v4, __o6);
vconnect ("boson,label=$\mathrm {W^{+}}$,tension=0.5", __v4, __v6);
vconnect ("fermion,tension=1", __o2, __v5);
vconnect ("fermion,tension=1", __v5, __o3);
vconnect ("fermion,tension=1", __o5, __v6);
vconnect ("fermion,tension=1", __v6, __o4);
vlabel ("$\mathrm {g}$", __i1);
vlabel ("$\mathrm {g}$", __i2);
vlabel ("$\mathrm {\bar {b}}$", __o1);
vlabel ("$\bar {\nu }_{\textrm {e}}$", __o2);
vlabel ("$\textrm {e}^{-}$", __o3);
vlabel ("$\nu _{\mu }$", __o4);
vlabel ("$\mu ^{+}$", __o5);
vlabel ("$\mathrm {b}$", __o6);
vdot (__v1, __v2, __v3, __v4, __v5, __v6);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
