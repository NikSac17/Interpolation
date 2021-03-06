clc
tic

x0=-1; x1=0; x2=1; x3=2;
y0=3; y1=-4; y2=5; y3=-6;
syms x;

L0=((x-x1)/(x0-x1))*((x-x2)/(x0-x2))*((x-x3)/(x0-x3));
L1=((x-x0)/(x1-x0))*((x-x2)/(x1-x2))*((x-x3)/(x1-x3));
L2=((x-x0)/(x2-x0))*((x-x1)/(x2-x1))*((x-x3)/(x2-x3));
L3=((x-x0)/(x3-x0))*((x-x1)/(x3-x1))*((x-x2)/(x3-x2));

P=y0*L0 + y1*L1 + y2*L2 +y3*L3;
simplify(P)

toc