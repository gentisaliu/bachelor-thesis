% diagram_tHq_kv.mp -- do not edit, generated automatically by tHq_kv.tex
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
vconnect ("phantom", __i1, __v1, __v2, __v3, __v4, __i2);
vconnect ("phantom", __i1, __v1, __v2, __o2);
vconnect ("phantom", __v2, __o2);
vconnect ("phantom", __v3, __o3);
vconnect ("gluon", __i1, __v1);
vconnect ("fermion,label=${\mathrm {b}}$", __v1, __v2);
vconnect ("fermion", __o1, __v1);
vconnect ("fermion", __i2, __v4);
vconnect ("boson,label=$\mathrm {W^{+}}$,label.dist=4,label.side=left", __v4, __v3);
vconnect ("boson,label=$\mathrm {W^{-}}$,label.dist=4,label.side=left", __v3, __v2);
vconnect ("fermion", __v4, __o4);
vconnect ("fermion", __v2, __o2);
vfreeze;
vconnect ("dashes,tension=0.8", __v3, __o3);
vlabel ("$\mathrm {g}$", __i1);
vlabel ("$\mathrm {q}$", __i2);
vlabel ("$\mathrm {\bar {b}}$", __o1);
vlabel ("$\mathrm {t}$", __o2);
vvertex ("label=$\mathrm {H}$,label.dist=2", __o3);
vlabel ("$\mathrm {q'}$", __o4);
vdot (__v1, __v2, __v3, __v4);
vvertex ("label=$\textcolor {KITrot}{\kappa _{\scriptscriptstyle \mathrm {V}}}$,label.angle=-160,f=(162/255,,34/255,,35/255)", __v3);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
