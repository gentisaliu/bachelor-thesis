% diagram_tHW_kt.mp -- do not edit, generated automatically by tHW_kt.tex
input feynmp
require_RCS_revision "1.30";
beginchar(1, 80*2.84526pt#, 55*2.84526pt#, 0);
"feynmf: 1";
LaTeX_unitlength:=2.84526pt;
subgraph (0, 0, w, h);
vinit;
pickup pencircle scaled thin;
vleft (__i1, __i2);
vright (__o1, __o2, __o3, __o4);
vconnect ("phantom", __i1, __v1, __v2, __i2);
vconnect ("phantom", __v2, __v3, __o4);
vconnect ("phantom", __v2, __v3, __v4, __o3);
vconnect ("gluon", __i1, __v1);
vconnect ("fermion,label=${\mathrm {b}}$", __v1, __v2);
vconnect ("fermion", __o1, __v1);
vconnect ("gluon", __i2, __v2);
vconnect ("fermion,label=$\mathrm {b}$,tension=0.4", __v2, __v3);
vconnect ("fermion", __v4, __o2);
vconnect ("fermion,label=$\mathrm {t}$,label.dist=6,label.side=left,tension=0.3", __v3, __v4);
vfreeze;
vconnect ("boson", __v3, __o4);
vconnect ("dashes", __v4, __o3);
vlabel ("$\mathrm {g}$", __i1);
vlabel ("$\mathrm {g}$", __i2);
vlabel ("$\mathrm {\bar {b}}$", __o1);
vvertex ("label=$\mathrm {W^{-}}$,label.dist=2", __o4);
vvertex ("label=$\mathrm {H}$,label.dist=2", __o3);
vlabel ("$\mathrm {t}$", __o2);
vdot (__v1, __v2, __v3, __v4);
vvertex ("label=$\textcolor {KITrot}{\kappa _{\scriptscriptstyle \mathrm {t}}}$,label.angle=-120,f=(162/255,,34/255,,35/255),label.dist=3", __v4);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
