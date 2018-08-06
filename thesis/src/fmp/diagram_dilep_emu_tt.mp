% diagram_dilep_emu_tt.mp -- do not edit, generated automatically by dilep_emu_tt.tex
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
vconnect ("fermion,tension=1.5", __i1, __v1);
vconnect ("fermion,tension=1.5", __i2, __v2);
vconnect ("fermion,tension=0.5", __o1, __v1);
vconnect ("boson,label=$\mathrm {W^{-}}$,tension=0.5,label.side=right", __v3, __v1);
vconnect ("fermion,tension=0.5", __v2, __o6);
vconnect ("boson,label=$\mathrm {W^{+}}$,tension=0.5", __v2, __v4);
vconnect ("fermion,tension=1", __o2, __v3);
vconnect ("fermion,tension=1", __v3, __o3);
vconnect ("fermion,tension=1", __o5, __v4);
vconnect ("fermion,tension=1", __v4, __o4);
vlabel ("$\mathrm {\bar {t}}$", __i1);
vlabel ("$\mathrm {t}$", __i2);
vlabel ("$\mathrm {\bar {b}}$", __o1);
vlabel ("$\nu _{\bar {\mathrm {e}}}$", __o2);
vlabel ("$\mathrm {e}^{-}$", __o3);
vlabel ("$\nu _{\upmu }$", __o4);
vlabel ("$\upmu ^{+}$", __o5);
vlabel ("$\mathrm {b}$", __o6);
vdot (__v1, __v2, __v3, __v4);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
