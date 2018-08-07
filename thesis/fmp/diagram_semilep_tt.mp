% diagram_semilep_tt.mp -- do not edit, generated automatically by semilep_tt.tex
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
vconnect ("gluon,tension=1.3", __i1, __v1);
vconnect ("gluon,tension=1.3", __i2, __v1);
vconnect ("gluon,label=${\mathrm {g}}$, label.dist=12,tension=1.4", __v1, __v2);
vconnect ("fermion,label=$\mathrm {\bar {t}}$,tension=1.5", __v3, __v2);
vconnect ("fermion,label=$\mathrm {t}$,tension=1.5,label.side=left", __v2, __v4);
vconnect ("fermion,tension=1.4,f=(162/255,,34/255,,35/255)", __o1, __v3);
vconnect ("boson,label=$\mathrm {W^{-}}$,tension=0.5,label.side=right", __v5, __v3);
vconnect ("fermion,tension=1.4,f=(162/255,,34/255,,35/255)", __v4, __o6);
vconnect ("boson,label=$\mathrm {W^{+}}$,tension=0.5", __v4, __v6);
vconnect ("fermion,tension=0.5,f=(0/255,,150/255,,130/255)", __v6, __o4);
vconnect ("fermion,tension=0.7,f=(35/255,,161/255,,224/255)", __o5, __v6);
vconnect ("fermion,tension=0.5", __v5, __o3);
vconnect ("fermion,tension=0.7", __o2, __v5);
vlabel ("$\mathrm {g}$", __i1);
vlabel ("$\mathrm {g}$", __i2);
vlabel ("$\textcolor {KITrot}{\mathrm {\bar {b}}}$", __o1);
vlabel ("$\textcolor {KITgruen}{\nu _{\scriptscriptstyle \ell }}$", __o4);
vlabel ("$\textcolor {KITcyan}{\ell ^{+}}$", __o5);
vlabel ("$\mathrm {\bar {q}'}$", __o2);
vlabel ("$\mathrm {q}$", __o3);
vlabel ("$\textcolor {KITrot}{\mathrm {b}}$", __o6);
vdot (__v1, __v2, __v3, __v4, __v5, __v6);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
