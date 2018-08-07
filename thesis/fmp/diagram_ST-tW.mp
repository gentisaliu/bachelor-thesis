% diagram_ST-tW.mp -- do not edit, generated automatically by ST-tW.tex
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
vconnect ("phantom", __i1, __v2, __v3, __o6);
vconnect ("phantom", __i2, __v2, __v3, __o1);
vfreeze;
vconnect ("gluon", __i1, __v1);
vconnect ("fermion,label=$\mathrm {b}$", __v1, __v2);
vconnect ("fermion,f=(162/255,,34/255,,35/255),tension=0.3", __o1, __v1);
vconnect ("gluon", __i2, __v2);
vconnect ("fermion,label=$\mathrm {b}$", __v2, __v3);
vconnect ("fermion,label=$\mathrm {t}$", __v3, __v4);
vconnect ("boson,label=$\mathrm {W^{-}}$,label.side=left,label.dist=3", __v3, __v5);
vconnect ("boson,label=$\mathrm {W}^{+}$,label.dist=3", __v4, __v6);
vconnect ("fermion,f=(162/255,,34/255,,35/255)", __v4, __o2);
vconnect ("fermion,f=(35/255,,161/255,,224/255)", __v5, __o6);
vconnect ("fermion,f=(0/255,,150/255,,130/255)", __o5, __v5);
vconnect ("fermion", __v6, __o3);
vconnect ("fermion", __o4, __v6);
vlabel ("$\mathrm {g}$", __i1);
vlabel ("$\mathrm {g}$", __i2);
vlabel ("$\textcolor {KITrot}{\mathrm {\bar {b}}}$", __o1);
vlabel ("$\textcolor {KITrot}{\mathrm {b}}$", __o2);
vlabel ("$\textcolor {KITgruen}{\bar {\nu }_{_{\scriptscriptstyle \ell }}}$", __o5);
vlabel ("$\textcolor {KITcyan}{\ell ^{-}}$", __o6);
vlabel ("$\mathrm {q}$", __o3);
vlabel ("$\mathrm {\bar {q}'}$", __o4);
vdot (__v1, __v2, __v3, __v4, __v5, __v6);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
