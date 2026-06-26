input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[a4paper,10pt]{article}
\usepackage{../paper-en}
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


draw (-2,0)*u--(2,0)*u penbold;
fill circle(origin,u) withcolor .6;
draw circle(origin,u) penbold;

endfig;

beginfig(20)
save u,p,n,d;
u:=1cm;
n:=20;
d:=.7*u;
path p[];


p1=(-1,0)*u{(1,0)}..(.2,.1)*u{(1,0)}..(1,0)*u{(1,0)}..(0,1)*u{(-1,0)}..cycle;

for i = 0 upto n-1:
t := (length p1)*i/n;
z[n+i]=point t of p1;
z[i] = point t of p1
      + d * unitvector((direction t of p1) rotated -90);
endfor

p2 := z[0]
for i = 1 upto n-1:
.. z[i]
endfor
.. cycle;

fill p2 withcolor .8;
fill p1 withcolor .6;
draw p1;
draw (-1,0)*u--(1,0)*u dashed evenly;
draw p2;
draw (-1*u,-d)--(1*u,-d) dashed evenly;

z.ss=z[19];
z.s=z[39];
z.o=2[z.ss,z.s];

draw arc(z.o+((z.ss-z.o) rotated -30),z.ss,z.o+((z.ss-z.o) rotated 30));
draw arc(z.o+((z.s-z.o) rotated -30),z.s,z.o+((z.s-z.o) rotated 30));
draw z.s--z.ss penhair;

dOt z.s, z.ss;

label.top(btex $K$ etex, (.2,.1)*u);
label.top(btex $K_s$ etex, (.2,.1)*u+(0,-d));
label.bot(btex $p$ etex, z.s+(-1,-1));
label.llft(btex $x$ etex, z.ss);
label.lft(btex $W$ etex, (2,0)+z.o+((z.s-z.o) rotated -30));
label.lft(btex $W_s$ etex, (1,0)+z.o+((z.ss-z.o) rotated -30));
endfig;

end
