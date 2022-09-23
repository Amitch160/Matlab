%  Differential Equation Using Euler's Method with Matlab


f = @(t,y) -2*y + 2 - exp(-4*t)

t0 =input ("Enter initial value of indepedent variable:");

y0 =input  ("Enter initial value of depedent variable:");

h = input("Enter step size:");

tn = input("Enter point at which you want to evaluate solution :");

n = (tn -t0)/h;

t(1) = t0;y(1)=y0;

for i = 1:n
    y(i+1) = y(i) + h*f(t(i),y(i));
    t(i+1) = t0 + i*h;
    fprintf("y(%.2f) = %.4f\n",t(i+1),y(i+1))
end


