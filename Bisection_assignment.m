%  Bisection Method In MATLAB

clear all
clc



f=@(x) 2*sin(x^2)-x ;


a=input("Enter left side of interval:");

b=input("Enter right side of interval:");

n=input("Enter number of intervals:");


e=input("Enter tolerance:");
while (f(a)*f(b)>0)
    disp("Initial Gusses are not correct!")
    a=input("Enter left side of interval:");

    b=input("Enter right side of interval:");

end
for i=1:n
    xr=(a+b)/2;
    if abs(xr-b)<e ||abs(xr-a)<e
            break

     end
    if(f(xr)*f(b)<0)
        a=xr;
    else
        b=xr;

    end
end
fprintf("\n\t Root of equation is =%f",xr)



