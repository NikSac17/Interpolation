clc
x=[0.5 1 1.5 2 3 4 6 10];
y=[0 -0.157 -0.315 -0.472 -0.629 -0.942 -1.004 -3.147];

figure
plot(x,y,'bo')

X=[(x.^0)' x'];
a=(X'*X)\(X'*y');
a0=a(1);
a1=a(2);
fit=@(z) a1+a2*x;
hold all
h=plot(x,X*a,'G-');