clear all
clc

tic
%data points

a=[0 1 2 4];
b=[0 1 8 64];


%main-code

%1 st divided difference
for i=1:3
    t=(b(1,i+1)-b(1,i))/(a(1,i+1)-a(1,i));
    T(1,i)=t;
end


%2 nd divided difference
for i=1:2
    u=((T(1,i+1)-T(1,i)))/(a(1,i+2)-a(1,i));
    U(1,i)=u;
end


%3 rd divided diffrence

for i=1:1
    v=((U(1,i+1)-U(1,i)))/(a(1,i+3)-a(1,i));
    V(1,i)=v;
end

syms x
P= b(1,1) + T(1,1)*(x-a(1,1)) +U(1,1)*(x-a(1,1))*(x-a(1,2)) + V(1,1)*(x-a(1,1))*(x-a(1,2))*(x-a(1,3));
disp('Required polynimial is : ')
disp(collect(P))


f=@(x) b(1,1) + T(1,1)*(x-a(1,1)) +U(1,1)*(x-a(1,1))*(x-a(1,2)) + V(1,1)*(x-a(1,1))*(x-a(1,2))*(x-a(1,3));
x=4;
h=pi/12;
deri=(f(x-h)-2*f(x)+f(x+h))/(h.^2);;
disp(deri)
toc