% diagram_tHq_Hbb.mp -- do not edit, generated automatically by tHq_Hbb.tex
input feynmp
require_RCS_revision "1.30";
beginchar(1, 90*2.84526pt#, 63*2.84526pt#, 0);
"feynmf: 1";
LaTeX_unitlength:=2.84526pt;
subgraph (0, 0, w, h);
vinit;
pickup pencircle scaled thin;
vleft (__i1, __i2);
vright (__o1, __dummy, __o2, __o3, __o4, __o5, __o6, __dummy, __o7);
vconnect ("phantom", __i1, __v1, __v2, __v3, __i2);
vconnect ("phantom", __v2, __v4);
vconnect ("phantom", __v4, __o4);
vconnect ("gluon", __i1, __v1);
vconnect ("fermion,label=${\mathrm {b}}$,label.side=left", __v1, __v2);
vconnect ("fermion,f=(162/255,,34/255,,35/255)", __o1, __v1);
vconnect ("fermion", __i2, __v3);
vconnect ("boson,label=$\mathrm {W^{+}}$,label.dist=4,label.side=right", __v3, __v2);
vconnect ("fermion,f=(70/255,,100/255,,170/255)", __v3, __o7);
vconnect ("fermion,label=$\mathrm {t}$,tension=0.8", __v2, __v4);
vfreeze;
vconnect ("fermion,label=$\mathrm {t}$,tension=1.3,label.side=right", __v4, __v5);
vconnect ("dashes,label=$\mathrm {H}$,tension=1.3,label.dist=4,label.side=left", __v4, __v6);
vconnect ("boson,label=$\mathrm {W^{+}}$,tension=1.3,label.dist=4", __v5, __v7);
vconnect ("fermion,f=(0/255,,150/255,,130/255),tension=1.2", __v7, __o2);
vconnect ("fermion,f=(35/255,,161/255,,224/255),tension=0.1", __o3, __v7);
vconnect ("fermion,f=(162/255,,34/255,,35/255)", __v5, __o4);
vconnect ("fermion,f=(162/255,,34/255,,35/255)", __o5, __v6);
vconnect ("fermion,f=(162/255,,34/255,,35/255)", __v6, __o6);
vlabel ("$\mathrm {g}$", __i1);
vlabel ("$\mathrm {q}$", __i2);
vlabel ("$\textcolor {KITrot}{\mathrm {\bar {b}}}$", __o1);
vlabel ("$\textcolor {KITgruen}{\nu _{\scriptscriptstyle \ell }}$", __o2);
vlabel ("$\textcolor {KITcyan}{\ell ^{+}}$", __o3);
vlabel ("$\textcolor {KITrot}{\mathrm {b}}$", __o4);
vlabel ("$\textcolor {KITrot}{\mathrm {\bar {b}}}$", __o5);
vlabel ("$\textcolor {KITrot}{\mathrm {b}}$", __o6);
vlabel ("$\textcolor {KITblau}{\mathrm {q'}}$", __o7);
vdot (__v1, __v2, __v3, __v4, __v5, __v6, __v7);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
