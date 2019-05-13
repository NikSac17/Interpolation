function y=lagrangeinter2(a,b)

%a,b are data points

a=[-1 0 1 2];
b=[3 -4 5 -6];

%lagrange interpolation
syms x;

sum=0;
for i=1:length(a)
    P=1;
    for j=1:length(b)
        if j~=i
            P=P*((x-a(1,j))/(a(1,i)-a(1,j)));
        end
    end
sum=sum+b(1,i)*P ;
end

sum
P=collect(sum)

x=linspace(-1,2);
P=collect(sum);
plot(x,P)

end