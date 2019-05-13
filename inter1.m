x=[0:5];
y=[0 10 25 36 52 59];
xn=[0:0.01:5];
yn=interp1(x,y,xn,'spline');
plot(x,y,'*');
hold on
plot(xn,yn)
