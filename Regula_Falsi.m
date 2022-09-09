%% Regula Falsi Method in Matlab



clear
clc



f=@(x) 3*x +sin(x)-exp(x);


a=input("Enter left side of interval:");

b=input("Enter right side of interval:");

n=input("Enter number of intervals:");


e=input("Enter tolerance:");
while (f(a)*f(b)>0 || a>b)
    disp("Initial Gusses are not correct!")
    a=input("Enter left side of interval:");

    b=input("Enter right side of interval:");

end
for i=1:n
    xr=(a*f(b)-b*f(a))/(f(b)-f(a));
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



