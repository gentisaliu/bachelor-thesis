% diagram_singlet_s2_fs.mp -- do not edit, generated automatically by singlet_s2_fs.tex
input feynmp
require_RCS_revision "1.30";
beginchar(1, 70*2.84526pt#, 55*2.84526pt#, 0);
"feynmf: 1";
LaTeX_unitlength:=2.84526pt;
subgraph (0, 0, w, h);
vinit;
pickup pencircle scaled thin;
vleft (__i1, __i2);
vright (__o1, __dummy, __o2, __o3, __o4);
vconnect ("phantom", __i2, __v1, __v2, __o4);
vconnect ("phantom", __i1, __v1, __v2, __o1);
vfreeze;
vconnect ("fermion,tension=1.6", __v1, __i1);
vconnect ("fermion,tension=1.6", __i2, __v1);
vconnect ("boson,label=${\mathrm {W^{+}}}$,label.side=right,tension=0.1", __v2, __v1);
vconnect ("fermion,f=(162/255,,34/255,,35/255)", __o1, __v2);
vconnect ("fermion,label=${\mathrm {t}}$,label.side=left", __v2, __v3);
vconnect ("fermion,f=(162/255,,34/255,,35/255)", __v3, __o4);
vconnect ("boson,label=${\mathrm {W^{+}}}$,tension=0.5,label.dist=2", __v3, __v4);
vconnect ("fermion,tension=0.7,f=(70/255,,100/255,,170/255)", __v4, __o2);
vconnect ("fermion,tension=0.5,f=(0/255,,150/255,,130/255)", __o3, __v4);
vfreeze;
vlabel ("$\mathrm {q}$", __i2);
vlabel ("$\mathrm {\bar {q}'}$", __i1);
vlabel ("$\textcolor {KITrot}{\mathrm {\bar {b}}}$", __o1);
vlabel ("$\textcolor {KITblau}{\nu _{\scriptscriptstyle \ell }}$", __o2);
vlabel ("$\textcolor {KITgruen}{\ell ^{+}}$", __o3);
vlabel ("$\textcolor {KITrot}{\mathrm {b}}$", __o4);
vdot (__v1, __v2, __v3, __v4);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
