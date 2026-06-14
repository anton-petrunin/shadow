input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[a4paper,10pt]{article}
\usepackage{../paper-ru}
\begin{document}
etex

filenametemplate "%j-%1c.eps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";


beginfig(10) 
save u;
u:=1cm;

fill circle(origin,u) withcolor 0;
draw (-2,0)*u--(2,0)*u penbold;

endfig;



end
